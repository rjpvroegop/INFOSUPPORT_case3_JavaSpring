package com.infosupport;

import com.infosupport.repository.CategoryRepository;
import com.infosupport.repository.ProductRepository;
import com.infosupport.repository.SupplierRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@EnableDiscoveryClient
public class BscatalogusbeheerApplication {

    public static void main(String[] args) {
        SpringApplication.run(BscatalogusbeheerApplication.class, args);
    }

}
