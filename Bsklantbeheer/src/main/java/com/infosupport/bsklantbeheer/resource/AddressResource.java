package com.infosupport.bsklantbeheer.resource;

import com.infosupport.bsklantbeheer.domain.Address;
import com.infosupport.bsklantbeheer.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.HttpMediaTypeNotAcceptableException;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.ValidationException;

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
    public ResponseEntity<Address> addAddress(@RequestBody Address address, HttpServletRequest request) throws HttpMediaTypeNotAcceptableException {
        try {
            address = addressService.addAddress(address);
            return new ResponseEntity<>(address, HttpStatus.CREATED);
        } catch (ValidationException e) {
            throw new HttpMediaTypeNotAcceptableException(e.getMessage());
        }
    }

    @RequestMapping(value = "/delete/{addressId}", method = PUT)
    public ResponseEntity<Void> removeAddress(@PathVariable("addressId") Long addressId, HttpServletRequest request) {
        addressService.removeAddress(addressId);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
