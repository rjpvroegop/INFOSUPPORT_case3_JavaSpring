package com.infosupport.bsklantbeheer.service.impl;

import com.infosupport.bsklantbeheer.domain.WebshopAccount;
import com.infosupport.bsklantbeheer.repository.CustomerRepository;
import com.infosupport.bsklantbeheer.repository.WebshopAccountRepository;
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
@Repository
public class WebshopAccountServiceImpl implements WebshopAccountService {

    private WebshopAccountRepository webshopAccountRepository;
    private CustomerRepository customerRepository;

    @Autowired
    public WebshopAccountServiceImpl(WebshopAccountRepository webshopAccountRepository, CustomerRepository customerRepository) {
        this.webshopAccountRepository = webshopAccountRepository;
        this.customerRepository = customerRepository;
    }

    @Override
    public WebshopAccount getWebshopAccount(Long id) {
        return webshopAccountRepository.findOne(id);
    }

    @Override
    public WebshopAccount getWebshopAccount(String username, String password) {
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
        long numberOfAccounts = customerRepository.count();
        long bsKeyNumber = numberOfAccounts + 1;
        String bsKeyPrefix = "CUST";
        String bsKeyPostfix = String.valueOf(bsKeyNumber);
        while(bsKeyPostfix.length() != 6){
            bsKeyPostfix = "0" + bsKeyPostfix;
        }
        String bsKey = bsKeyPrefix + bsKeyPostfix;
        webshopAccount.getCustomer().setBsKey(bsKey);
        if (checkSaveWebshopAccountValidity(webshopAccount) && CustomerValidation.validateCustomer(webshopAccount.getCustomer())) {
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
