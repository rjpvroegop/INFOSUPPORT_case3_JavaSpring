package com.infosupport;

import com.infosupport.domain.Address;
import com.infosupport.domain.Customer;
import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.AddressRepository;
import com.infosupport.repository.CustomerRepository;
import com.infosupport.repository.WebshopAccountRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.Arrays;

//@EnableDiscoveryClient
@SpringBootApplication
public class BsKlantbeheerApplication {

    public static void main(String[] args) {
        SpringApplication.run(BsKlantbeheerApplication.class, args);
    }

    @Bean
    CommandLineRunner onStartUp(CustomerRepository customerRepository, AddressRepository addressRepository, WebshopAccountRepository webshopAccountRepository) {
        return (String... args) -> {
            Address address1 = Address.builder().city("Dordrecht").zip("1234 AB").street("Leerpark 50").build();
            Address address2 = Address.builder().city("Breda").zip("1234 AB").street("Leerpark 50").build();
            addressRepository.save(address1);
            addressRepository.save(address2);

            Customer customer1 = Customer.builder().firstName("Sander").lastName("Blijlevens").email("SB@hotmail.com").credit(200).addressCollection(Arrays.asList(address1)).build();
            Customer customer2 = Customer.builder().firstName("Kenzo").lastName("Dominicus").email("KD@gmail.com").credit(300).build();
            Customer customer3 = Customer.builder().firstName("Randy").lastName("Vroegop").email("RV@gmail.com").credit(300).build();
            Customer customer4 = Customer.builder().firstName("Yusuf").lastName("Yusuf").email("YY@outlook.com").credit(300).build();
            Customer customer5 = Customer.builder().firstName("Maarten").lastName("van den Broek").email("MB@yahoo.com").credit(300).build();

            webshopAccountRepository.save(WebshopAccount.builder().userName("ABC").password("123").customer(customer1).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("CDE").password("456").customer(customer2).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("FGH").password("789").customer(customer3).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("IJK").password("987").customer(customer4).build());
            webshopAccountRepository.save(WebshopAccount.builder().userName("LMN").password("654").customer(customer5).build());

        };
    }
}
