# ==============================
# STAGE 1 : BUILD (Maven)
# ==============================
FROM maven:3.9-eclipse-temurin-17 AS builder

WORKDIR /build

# Copier seulement les fichiers nécessaires
COPY pom.xml .
RUN mvn -B -q -e -DskipTests dependency:go-offline

# Copier le code source
COPY src ./src

# Compiler le projet
RUN mvn clean package -DskipTests


# ==============================
# STAGE 2 : RUN (Java)
# ==============================
FROM eclipse-temurin:17-jre-jammy

WORKDIR /app

# Copier le JAR depuis le build
COPY --from=builder /build/target/*.jar app.jar

# Exposer le port
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]