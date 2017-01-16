package com.infosupport.service.impl;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.WebshopAccountRepository;
import com.infosupport.service.WebshopAccountService;
import com.infosupport.validation.CustomerValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

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
    public WebshopAccount saveWebshopAccount(WebshopAccount webshopAccount) {
        WebshopAccount result = null;
        if (checkSaveWebshopAccountValidity(webshopAccount)) {
            if (CustomerValidation.validateCustomer(webshopAccount.getCustomer())){
                result = webshopAccountRepository.save(webshopAccount);
            }
        }
        return result;
    }



    private boolean checkSaveWebshopAccountValidity(WebshopAccount webshopAccount) {
        if (webshopAccount != null){
            WebshopAccount conflict = webshopAccountRepository.findByUserName(webshopAccount.getUserName());
            if (conflict == null) {
                return true;
            }
        }
        return false;
    }

    private boolean validateAccountData(WebshopAccount account, String password){
        if (account != null){
            if (account.getPassword() != null){
                if (account.getPassword().equals(password)){
                    return true;
                }
            }
        }
        return false;
    }

}
