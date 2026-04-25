    package com.example.demo_devops.entity;

    import jakarta.persistence.*;
    import lombok.*;

    @Entity
    @Table(name = "users")
    @NoArgsConstructor
    @AllArgsConstructor
    @Getter @Setter
    public class User {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private int id;
        private String username;
        private String email;

    }
