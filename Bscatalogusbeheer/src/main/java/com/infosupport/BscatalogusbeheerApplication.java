package com.infosupport;

import com.infosupport.domain.Category;
import com.infosupport.domain.Product;
import com.infosupport.repository.ProductRepository;
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

	@Bean
	CommandLineRunner onStartup(ProductRepository repository) {
		return (String... args) -> {
			repository.save(Product.builder().name("Trapper").category(Category.PART).build());
			repository.save(Product.builder().name("Heren fiets").category(Category.BIKE).build());
			repository.save(Product.builder().name("Dames fiets").category(Category.BIKE).build());

			System.out.println("All Products added");
			repository.findAll().forEach(System.out::println);
		};
	}
}
