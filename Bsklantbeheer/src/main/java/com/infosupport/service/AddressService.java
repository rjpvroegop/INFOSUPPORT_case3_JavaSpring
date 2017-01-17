package com.infosupport.service;

import com.infosupport.domain.Address;

import javax.xml.bind.ValidationException;

/**
 * Created by maart on 10-1-2017.
 */
public interface AddressService {

    Address getAddress(Long id);

    Address addAddress(Address address) throws ValidationException;

    Address removeAddress(Long id);
}
