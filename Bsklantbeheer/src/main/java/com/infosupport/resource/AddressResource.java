package com.infosupport.resource;

import com.infosupport.domain.Address;
import com.infosupport.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

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
        address = addressService.addAddress(address);
        HttpStatus status;
        if (address != null) {
            status = HttpStatus.CREATED;
        } else {
            status = HttpStatus.BAD_REQUEST;
        }
        return new ResponseEntity<>(address, status);
    }

    @RequestMapping(value = "/delete/{addressId}", method = PUT)
    public ResponseEntity<Void> removeAddress(@PathVariable("addressId") Long addressId, HttpServletRequest request) {
        addressService.removeAddress(addressId);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
