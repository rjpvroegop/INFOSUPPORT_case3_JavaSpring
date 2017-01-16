package com.infosupport.service.impl;

import com.infosupport.domain.Address;
import com.infosupport.repository.AddressRepository;
import com.infosupport.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.xml.bind.ValidationException;

/**
 * Created by maart on 10-1-2017.
 */
@Service("addressService")
@Repository
public class AddressServiceImpl implements AddressService {

    private AddressRepository addressRepository;

    @Autowired
    public AddressServiceImpl(AddressRepository addressRepository) {
        this.addressRepository = addressRepository;
    }

    public Address getAddress(Long id) {
        return addressRepository.findOne(id);
    }

    @Override
    public Address addAddress(Address address) throws ValidationException {
        if (address != null) {
            return addressRepository.save(address);
        } else {
            throw new ValidationException("Invalid address data!");
        }
    }

    @Override
    public Address removeAddress(Long id) {
        Address address = addressRepository.findOne(id);
        address.setDeleted(true);
        addressRepository.save(address);
        return address;
    }


}
