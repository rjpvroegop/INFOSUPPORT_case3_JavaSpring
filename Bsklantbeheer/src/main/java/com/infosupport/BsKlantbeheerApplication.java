package com.infosupport;

import com.infosupport.domain.Address;
import com.infosupport.domain.Customer;
import com.infosupport.repository.CustomerRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;
import java.util.Collections;

//@EnableDiscoveryClient
@SpringBootApplication
public class BsKlantbeheerApplication {

	public static void main(String[] args) {
		SpringApplication.run(BsKlantbeheerApplication.class, args);
	}

	@Bean
	CommandLineRunner onStartUp(CustomerRepository repo){
		return (String... args) ->{
			Address address1 = Address.builder().city("Dordrecht").zip("1234 AB").street("Leerpark 50").build();
			Address address2 = Address.builder().city("Breda").zip("1234 AB").street("Leerpark 50").build();

			repo.save(Customer.builder().firstName("Sander").lastName("Blijlevens").email("SB@hotmail.com").credit(200).addressCollection(Arrays.asList(address1)).build());
			repo.save(Customer.builder().firstName("Kenzo").lastName("Dominicus").email("KD@gmail.com").credit(300).build());
			repo.save(Customer.builder().firstName("Randy").lastName("Vroegop").email("RV@gmail.com").credit(300).build());
			repo.save(Customer.builder().firstName("Yusuf").lastName("Yusuf").email("YY@outlook.com").credit(300).build());
			repo.save(Customer.builder().firstName("Maarten").lastName("van den Broek").email("MB@yahoo.com").credit(300).build());
		};
	}
}
