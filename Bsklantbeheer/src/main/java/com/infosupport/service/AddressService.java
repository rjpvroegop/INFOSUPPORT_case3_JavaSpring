package com.infosupport.service;

import com.infosupport.domain.Address;

/**
 * Created by maart on 10-1-2017.
 */
public interface AddressService {

    Address getAddress(Long id);

    Address addAddress(Address address);

    Address removeAddress(Long id);
}
