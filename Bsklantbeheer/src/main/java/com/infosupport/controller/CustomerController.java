package com.infosupport.controller;

import com.infosupport.domain.Address;
import com.infosupport.domain.Customer;
import com.infosupport.repository.AddressRepository;
import com.infosupport.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * Created by Sander on 9-1-17.
 */
@RestController
@RequestMapping("customers/")
public class CustomerController {

    private CustomerRepository customerRepository;
    private AddressRepository addressRepository;

    @Autowired
    public CustomerController(CustomerRepository customerRepository, AddressRepository addressRepository) {
        this.customerRepository = customerRepository;
        this.addressRepository = addressRepository;
    }

    @RequestMapping(value = "{id}", method = GET)
    public Customer getCustomer(@PathVariable("id") Long id) {
        return customerRepository.findOne(id);
    }

    @RequestMapping(method = POST)
    public void addCustomer(@RequestBody Customer customer) {
        customerRepository.save(customer);
    }

    @RequestMapping
    public Collection<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }


    //TODO -- hoe pakken we dit het beste aan?
    @RequestMapping(value = "{customerId}/address/{addressId}", method = GET)
    public Address getAddressFromCustomer(@PathVariable("customerId") Long customerId, @PathVariable("addressId") Long addressId) {
        return addressRepository.getOne(addressId);
    }

}
