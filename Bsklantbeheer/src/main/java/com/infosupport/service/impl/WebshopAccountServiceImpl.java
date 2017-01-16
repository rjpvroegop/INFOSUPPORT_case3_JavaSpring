package com.infosupport.service.impl;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.WebshopAccountRepository;
import com.infosupport.service.WebshopAccountService;
import com.infosupport.validation.CustomerValidation;
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

    @Autowired
    public WebshopAccountServiceImpl(WebshopAccountRepository webshopAccountRepository) {
        this.webshopAccountRepository = webshopAccountRepository;
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
