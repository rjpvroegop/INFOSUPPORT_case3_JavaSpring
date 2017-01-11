package com.infosupport.zuulapi;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Bean;

/**
 * Created by Kenzo Dominicus on 10-1-2017.
 */
@EnableDiscoveryClient
@EnableZuulProxy
@SpringBootApplication
public class ZuulapiApplication {

    public static void main(String[] args) {
        SpringApplication.run(ZuulapiApplication.class, args);
    }

    @Bean
    CommandLineRunner onStartup() {
        return (String[] args) -> System.out.println("I'm starting! :-)");
    }

}