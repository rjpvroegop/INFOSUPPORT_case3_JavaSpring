package com.infosupport.service.impl;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.WebshopAccountRepository;
import com.infosupport.service.WebshopAccountService;
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
    public WebshopAccount saveWebshopAccount(WebshopAccount webshopAccount) {
        WebshopAccount result = null;
        if (webshopAccount != null) {
            if (checkWebshopAccountValidity(webshopAccount)) {
                result = webshopAccountRepository.save(webshopAccount);
            }
        }
        return result;
    }

    private boolean checkWebshopAccountValidity(WebshopAccount webshopAccount) {
        WebshopAccount conflict = webshopAccountRepository.findByUserName(webshopAccount.getUserName());
        if (conflict == null) {
            return true;
        } else {
            return false;
        }
    }

}
