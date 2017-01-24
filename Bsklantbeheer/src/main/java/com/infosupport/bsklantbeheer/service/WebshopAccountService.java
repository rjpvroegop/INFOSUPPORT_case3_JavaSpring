package com.infosupport.bsklantbeheer.service;

import com.infosupport.bsklantbeheer.domain.WebshopAccount;

import javax.xml.bind.ValidationException;

/**
 * Created by maart on 10-1-2017.
 */
public interface WebshopAccountService {

    WebshopAccount getWebshopAccount(Long id);

    WebshopAccount login(String username, String password);

    WebshopAccount saveWebshopAccount(WebshopAccount webshopAccount) throws ValidationException;
}
