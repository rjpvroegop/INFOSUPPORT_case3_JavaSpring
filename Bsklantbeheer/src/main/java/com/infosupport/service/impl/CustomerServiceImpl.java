package com.infosupport.service.impl;

import com.infosupport.domain.Customer;
import com.infosupport.repository.CustomerRepository;
import com.infosupport.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
@Service("customerService")
@Repository
public class CustomerServiceImpl implements CustomerService {

    private CustomerRepository customerRepository;

    @Autowired
    public CustomerServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public Customer getCustomer(Long id){
        return customerRepository.findOne(id);
    }

    @Override
    public Customer editCustomer(Customer customer) {
        customerRepository.save(customer);
        return customer;
    }

    @Override
    public Collection<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }


}
