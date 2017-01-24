package com.infosupport.bsklantbeheer.service;

import com.infosupport.bsklantbeheer.domain.Customer;

import javax.xml.bind.ValidationException;
import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
public interface CustomerService {

    Customer getCustomer(Long id);

    Customer editCustomer(Customer customer) throws ValidationException;

    Collection<Customer> getAllCustomers();

    Customer createBsKeyCustomer(Customer customer);

}
