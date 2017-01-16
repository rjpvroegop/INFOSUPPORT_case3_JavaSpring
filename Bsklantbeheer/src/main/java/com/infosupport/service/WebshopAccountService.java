package com.infosupport.service;

import com.infosupport.domain.WebshopAccount;

/**
 * Created by maart on 10-1-2017.
 */
public interface WebshopAccountService {

    WebshopAccount getWebshopAccount(Long id);

    WebshopAccount getWebshopAccount(String username, String password);

    WebshopAccount saveWebshopAccount(WebshopAccount webshopAccount);
}
