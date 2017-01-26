package com.infosupport.bsvoorraadbeheer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;


@EnableDiscoveryClient
@SpringBootApplication
public class BsvoorraadbeheerApplication {
    public static void main(String[] args) {
        SpringApplication.run(BsvoorraadbeheerApplication.class, args);
    }
}
