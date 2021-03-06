package com.infosupport.bscatalogusbeheer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class BscatalogusbeheerApplication {

    public static void main(String[] args) {
        SpringApplication.run(BscatalogusbeheerApplication.class, args);
    }

}
