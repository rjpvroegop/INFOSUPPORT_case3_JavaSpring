package com.infosupport.bsklantbeheer;

import com.infosupport.bsklantbeheer.domain.Address;
import com.infosupport.bsklantbeheer.domain.Customer;
import com.infosupport.bsklantbeheer.domain.WebshopAccount;
import com.infosupport.bsklantbeheer.repository.AddressRepository;
import com.infosupport.bsklantbeheer.repository.CustomerRepository;
import com.infosupport.bsklantbeheer.repository.WebshopAccountRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;

@EnableDiscoveryClient
@SpringBootApplication
public class BsKlantbeheerApplication {

    public static void main(String[] args) {
        SpringApplication.run(BsKlantbeheerApplication.class, args);
    }

}
