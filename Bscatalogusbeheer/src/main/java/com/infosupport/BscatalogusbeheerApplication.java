package com.infosupport;

import com.infosupport.domain.Category;
import com.infosupport.domain.Product;
import com.infosupport.repository.ProductRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

import java.time.LocalDate;

@SpringBootApplication
@EnableDiscoveryClient
public class BscatalogusbeheerApplication {

	public static void main(String[] args) {
		SpringApplication.run(BscatalogusbeheerApplication.class, args);
	}

	@Bean
	CommandLineRunner onStartup(ProductRepository repository) {
		return (String... args) -> {
			repository.save(Product.builder().name("Trapper").category(Category.PART).description("Een trapper is een belangrijk onderdeel van de fiets, dit onderdeel moet stevig zijn.").availableFrom(LocalDate.now().minusDays(1)).availableUntil(LocalDate.now().plusDays(5)).build());
			repository.save(Product.builder().name("Heren fiets").category(Category.BIKE).description("Een stevige heren fiets").availableFrom(LocalDate.now().plusDays(1)).availableUntil(LocalDate.now().plusDays(5)).build());
			repository.save(Product.builder().name("Dames fiets").category(Category.BIKE).description("Een dames fiets met lage instap").availableFrom(LocalDate.now().minusDays(5)).availableUntil(LocalDate.now().minusDays(1)).build());

			System.out.println("All Products added");
			repository.findAll().forEach(System.out::println);
		};
	}
}
