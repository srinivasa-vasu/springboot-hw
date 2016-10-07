package com.rh.docker.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class App {
    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }

    @RequestMapping(value = "/english")
    String hello() {
        return "Hello World!";
    }
    
    @RequestMapping(value = "/hindi")
    String hindi() {
        return "Namasthe!";
    }
    
    @RequestMapping(value = "/tamil")
    String tamil() {
        return "Vanakkam!";
    }
    
    @RequestMapping(value = "/french")
    String french() {
        return "Bonjour!";
    }
    
    @RequestMapping(value = "/spanish")
    String german() {
        return "Hola!";
    }
}