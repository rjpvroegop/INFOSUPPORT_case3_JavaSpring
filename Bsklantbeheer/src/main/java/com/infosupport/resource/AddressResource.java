package com.infosupport.resource;

import com.infosupport.domain.Address;
import com.infosupport.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.*;

/**
 * Created by maart on 10-1-2017.
 */
@RestController
@RequestMapping("address")
public class AddressResource {

    private AddressRepository addressRepository;

    @Autowired
    public AddressResource(AddressRepository addressRepository) {
        this.addressRepository = addressRepository;
    }

    @RequestMapping(value = "/{addressId}", method = GET)
    public Address getAddress(@PathVariable("addressId") Long addressId) {
        return addressRepository.findOne(addressId);
    }

    @RequestMapping(value = "/newAddress", method = POST)
    public ResponseEntity<Address> addAddress(@RequestBody Address address, HttpServletRequest request) {
        addressRepository.save(address);
        return new ResponseEntity<>(address, HttpStatus.CREATED);
    }

    @RequestMapping(value = "/delete/{addressId}", method = PUT)
    public ResponseEntity<Void> removeAddress(@PathVariable("addressId") Long addressId, HttpServletRequest request) {
        Address address = addressRepository.findOne(addressId);
        address.setDeleted(true);
        addressRepository.save(address);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
