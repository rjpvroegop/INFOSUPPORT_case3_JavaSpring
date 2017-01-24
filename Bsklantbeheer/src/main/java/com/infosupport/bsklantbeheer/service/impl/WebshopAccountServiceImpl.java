package com.infosupport.bsklantbeheer.service.impl;

import com.infosupport.bsklantbeheer.domain.WebshopAccount;
import com.infosupport.bsklantbeheer.repository.CustomerRepository;
import com.infosupport.bsklantbeheer.repository.WebshopAccountRepository;
import com.infosupport.bsklantbeheer.service.CustomerService;
import com.infosupport.bsklantbeheer.service.WebshopAccountService;
import com.infosupport.bsklantbeheer.validation.CustomerValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.xml.bind.ValidationException;

/**
 * Created by maart on 10-1-2017.
 */
@Service("webshopAccountService")
public class WebshopAccountServiceImpl implements WebshopAccountService {

    private WebshopAccountRepository webshopAccountRepository;
    private CustomerService customerService;

    @Autowired
    public WebshopAccountServiceImpl(WebshopAccountRepository webshopAccountRepository, CustomerService customerService) {
        this.webshopAccountRepository = webshopAccountRepository;
        this.customerService = customerService;
    }

    @Override
    public WebshopAccount getWebshopAccount(Long id) {
        return webshopAccountRepository.findOne(id);
    }

    @Override
    public WebshopAccount login(String username, String password) {
        WebshopAccount account = webshopAccountRepository.findByUserName(username);
        if (validateAccountData(account, password)) {
            return account;
        } else {
            return null;
        }
    }

    @Override
    public WebshopAccount saveWebshopAccount(WebshopAccount webshopAccount) throws ValidationException {
        //create business key customer

        if (checkSaveWebshopAccountValidity(webshopAccount) && CustomerValidation.validateCustomer(webshopAccount.getCustomer())) {
            webshopAccount.getCustomer().setBsKey(customerService.createBsKeyCustomer(webshopAccount.getCustomer()).getBsKey());
            return webshopAccountRepository.save(webshopAccount);
        } else {
            throw new ValidationException("Invalid account data!");
        }
    }


    private boolean checkSaveWebshopAccountValidity(WebshopAccount webshopAccount) {
        if ((webshopAccount != null) && (webshopAccountRepository.findByUserName(webshopAccount.getUserName()) == null)) {
            return true;
        }
        return false;
    }

    private boolean validateAccountData(WebshopAccount account, String password) {
        if (account != null && account.getPassword() != null) {
            if (account.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }



}
