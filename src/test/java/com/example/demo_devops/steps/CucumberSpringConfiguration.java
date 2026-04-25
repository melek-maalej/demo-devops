package com.example.demo_devops.steps;
import com.example.demo_devops.DemoDevopsApplication;
import io.cucumber.spring.CucumberContextConfiguration;
import org.springframework.boot.test.context.SpringBootTest;

@CucumberContextConfiguration
@SpringBootTest(classes = DemoDevopsApplication.class)
public class CucumberSpringConfiguration {
}
