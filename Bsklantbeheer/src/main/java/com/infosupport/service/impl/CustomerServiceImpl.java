package com.infosupport.service.impl;

import com.infosupport.domain.Address;
import com.infosupport.domain.Customer;
import com.infosupport.repository.CustomerRepository;
import com.infosupport.service.CustomerService;
import com.infosupport.validation.CustomerValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
        Customer customer = customerRepository.findOne(id);
        Collection<Address> notDeletedAddresses = new ArrayList<>();
        if (customer != null && customer.getAddresses() != null){
            for (Address address: customer.getAddresses()){
                if (!address.isDeleted()){
                    notDeletedAddresses.add(address);
                }
            }
            customer.setAddresses(notDeletedAddresses);
        }
        return customer;
    }

    @Override
    public Customer editCustomer(Customer customer) {
        if (CustomerValidation.validateCustomer(customer)){
            customerRepository.save(customer);
        }
        return customer;
    }

    @Override
    public Collection<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }


}
