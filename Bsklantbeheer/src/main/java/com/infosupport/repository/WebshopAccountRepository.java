package com.infosupport.repository;

import com.infosupport.domain.Customer;
import com.infosupport.domain.WebshopAccount;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by maart on 10-1-2017.
 */
public interface WebshopAccountRepository extends JpaRepository<WebshopAccount, Long> {

    WebshopAccount findByUserName(String userName);

}
