package com.infosupport.bsklantbeheer.service.impl;

import com.infosupport.bsklantbeheer.domain.Address;
import com.infosupport.bsklantbeheer.domain.Customer;
import com.infosupport.bsklantbeheer.repository.CustomerRepository;
import com.infosupport.bsklantbeheer.service.CustomerService;
import com.infosupport.bsklantbeheer.validation.CustomerValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.bind.ValidationException;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

    private CustomerRepository customerRepository;

    @Autowired
    public CustomerServiceImpl(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @Override
    public Customer getCustomer(Long id) {
        Customer customer = customerRepository.findOne(id);
        Collection<Address> notDeletedAddresses = new ArrayList<>();
        if (customer != null && customer.getAddresses() != null) {
            for (Address address : customer.getAddresses()) {
                if (!address.isDeleted()) {
                    notDeletedAddresses.add(address);
                }
            }
            customer.setAddresses(notDeletedAddresses);
        }
        return customer;
    }

    @Override
    public Customer editCustomer(Customer customer) throws ValidationException {
        if (CustomerValidation.validateCustomer(customer)) {
            customerRepository.save(customer);
        } else {
            throw new ValidationException("Invalid Customer data!");
        }
        return customer;
    }

    @Override
    public Collection<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

    @Override
    public Customer createBsKeyCustomer(Customer customer) {
        long numberOfAccounts = customerRepository.count();
        long bsKeyNumber = numberOfAccounts + 1;
        String bsKeyPrefix = "CUST";
        StringBuilder bsKey = new StringBuilder();
        bsKey.append(String.valueOf(bsKeyNumber));
        while (bsKey.toString().length() != 6) {
            bsKey.insert(0, "0");
        }
        bsKey.insert(0, bsKeyPrefix);
        customer.setBsKey(bsKey.toString());
        return customer;
    }
}
