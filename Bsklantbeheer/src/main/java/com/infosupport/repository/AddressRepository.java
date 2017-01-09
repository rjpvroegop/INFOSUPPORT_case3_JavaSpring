package com.infosupport.repository;

import com.infosupport.domain.Address;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by maart on 9-1-2017.
 */
public interface AddressRepository extends JpaRepository<Address, Long> {

}
