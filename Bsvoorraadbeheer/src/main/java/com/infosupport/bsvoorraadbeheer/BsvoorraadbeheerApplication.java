package com.infosupport.bsvoorraadbeheer;

import com.infosupport.bsvoorraadbeheer.repository.StockRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

@EnableDiscoveryClient
@SpringBootApplication
public class BsvoorraadbeheerApplication {

	public static void main(String[] args) {
		SpringApplication.run(BsvoorraadbeheerApplication.class, args);
	}

	@Bean
	CommandLineRunner onStartUp(StockRepository stockRepository) {
		return (String... args) -> {

		};
	}
}
