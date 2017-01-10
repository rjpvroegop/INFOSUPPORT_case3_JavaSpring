package com.infosupport.resource;

import com.infosupport.domain.Customer;
import com.infosupport.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.PUT;

/**
 * Created by Sander on 9-1-17.
 */
@RestController
@RequestMapping("customers")
public class CustomerResource {

    private CustomerRepository customerRepository;

    @Autowired
    public CustomerResource(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @RequestMapping(value = "/{id}", method = GET)
    public Customer getCustomer(@PathVariable("id") Long id) {
        return customerRepository.findOne(id);
    }

    @RequestMapping(value = "/**", method = PUT)
    public ResponseEntity<Customer> addCustomer(@RequestBody Customer customer, HttpServletRequest request) {
        customerRepository.save(customer);
        return new ResponseEntity<>(customer, HttpStatus.OK);
    }

    @RequestMapping
    public Collection<Customer> getAllCustomers() {
        return customerRepository.findAll();
    }

}
