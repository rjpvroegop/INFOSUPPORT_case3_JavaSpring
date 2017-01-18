package com.infosupport.resource;

import com.infosupport.domain.Address;
import com.infosupport.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.ValidationException;

import static org.hibernate.jpa.internal.EntityManagerImpl.LOG;
import static org.springframework.web.bind.annotation.RequestMethod.*;

/**
 * Created by maart on 10-1-2017.
 */
@CrossOrigin
@RestController
@RequestMapping("address")
public class AddressResource {

    private AddressService addressService;

    @Autowired
    public AddressResource(AddressService addressService) {
        this.addressService = addressService;
    }

    @RequestMapping(value = "/{addressId}", method = GET)
    public Address getAddress(@PathVariable("addressId") Long addressId) {
        return addressService.getAddress(addressId);
    }

    @RequestMapping(value = "/", method = POST)
    public ResponseEntity<Address> addAddress(@RequestBody Address address, HttpServletRequest request) {
        try {
            address = addressService.addAddress(address);
            return new ResponseEntity<>(address, HttpStatus.CREATED);
        } catch (ValidationException e) {
            LOG.error("Exception while validating user address");
            return new ResponseEntity<>(address, HttpStatus.NOT_ACCEPTABLE);
        }
    }

    @RequestMapping(value = "/delete/{addressId}", method = PUT)
    public ResponseEntity<Void> removeAddress(@PathVariable("addressId") Long addressId, HttpServletRequest request) {
        addressService.removeAddress(addressId);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
