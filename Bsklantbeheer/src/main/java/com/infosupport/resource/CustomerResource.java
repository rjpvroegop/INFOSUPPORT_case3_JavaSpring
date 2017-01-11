package com.infosupport.resource;

import com.infosupport.domain.Customer;
import com.infosupport.repository.CustomerRepository;
import com.infosupport.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.PUT;

/**
 * Created by Sander on 9-1-17.
 */
@CrossOrigin
@RestController
@RequestMapping("customers")
public class CustomerResource {

    private CustomerService customerService;

    @Autowired
    public CustomerResource(CustomerService customerService) {
        this.customerService = customerService;
    }


    @RequestMapping(value = "/{id}", method = GET)
    public Customer getCustomer(@PathVariable("id") Long id) {
        return customerService.getCustomer(id);
    }

    @RequestMapping(value = "/**", method = PUT)
    public ResponseEntity<Customer> editCustomer(@RequestBody Customer customer, HttpServletRequest request) {
        customerService.editCustomer(customer);
        return new ResponseEntity<>(customer, HttpStatus.OK);
    }

    @RequestMapping
    public Collection<Customer> getAllCustomers() {
        return customerService.getAllCustomers();
    }

}
