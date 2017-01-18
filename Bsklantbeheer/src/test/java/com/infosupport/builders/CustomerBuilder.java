package com.infosupport.builders;

import com.infosupport.bsklantbeheer.domain.Address;
import com.infosupport.bsklantbeheer.domain.Customer;

import java.util.Arrays;

/**
 * Created by maart on 16-1-2017.
 */
public class CustomerBuilder {

    public static Customer.CustomerBuilder testCustomerBuilder() {
        return Customer.builder()
                .addresses(Arrays.asList(Address.builder()
                        .street("Street")
                        .zip("1234 AB")
                        .deleted(false)
                        .build()
                ))
                .email("customer@hotmail.com")
                .credit(200)
                .birthDate("1993-12-3")
                .firstName("Henk")
                .lastName("Heesters")
                .phone("+31 6 28 45 92 12");
    }

}
