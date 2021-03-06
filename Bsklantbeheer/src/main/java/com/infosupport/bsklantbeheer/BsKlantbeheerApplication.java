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

    @Bean
    CommandLineRunner onStartUp(CustomerRepository customerRepository, AddressRepository addressRepository, WebshopAccountRepository webshopAccountRepository) {
        return (String... args) -> {
            Address address1 = Address.builder().city("Dordrecht").zip("1234 AB").street("Leerpark 50").build();
            Address address2 = Address.builder().city("Breda").zip("1234 AB").street("Leerpark 50").deleted(true).build();

            Customer customer1 = Customer.builder().firstName("Sander").lastName("Blijlevens").email("SB@hotmail.com").birthDate("1993-1-2").phone("123456").credit(200).addresses(Arrays.asList(address1, address2)).build();
            Customer customer2 = Customer.builder().firstName("Kenzo").lastName("Dominicus").email("KD@gmail.com").birthDate("1994-1-1").phone("123456").credit(300).build();
            Customer customer3 = Customer.builder().firstName("Randy").lastName("Vroegop").email("RV@gmail.com").birthDate("1995-2-13").phone("123456").credit(300).build();
            Customer customer4 = Customer.builder().firstName("Yusuf").lastName("Yusuf").email("YY@outlook.com").birthDate("1996-1-21").phone("123456").credit(300).build();
            Customer customer5 = Customer.builder().firstName("Maarten").lastName("van den Broek").email("MB@yahoo.com").birthDate("1993-1-16").phone("123456").credit(300).build();

            webshopAccountRepository.save(WebshopAccount.builder().userName("ABC").password("123").customer(customer1).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("CDE").password("456").customer(customer2).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("FGH").password("789").customer(customer3).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("IJK").password("987").customer(customer4).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("LMN").password("654").customer(customer5).build());

        };
    }
}
