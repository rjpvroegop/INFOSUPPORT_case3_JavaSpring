package com.infosupport.bsklantbeheer.repository;

import com.infosupport.bsklantbeheer.domain.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Sander on 9-1-17.
 */
public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
