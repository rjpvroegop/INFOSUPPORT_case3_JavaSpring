package com.infosupport.service;

import com.infosupport.domain.Customer;

import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
public interface CustomerService {

    Customer getCustomer(Long id);
    Customer editCustomer(Customer customer);
    Collection<Customer> getAllCustomers();

}
