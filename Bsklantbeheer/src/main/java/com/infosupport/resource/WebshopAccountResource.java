package com.infosupport.resource;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.service.WebshopAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.xml.bind.ValidationException;

import static org.hibernate.jpa.internal.EntityManagerImpl.LOG;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * Created by maart on 10-1-2017.
 */
@CrossOrigin
@RestController
@RequestMapping("accounts")
public class WebshopAccountResource {

    private WebshopAccountService webshopAccountService;

    @Autowired
    public WebshopAccountResource(WebshopAccountService webshopAccountService) {
        this.webshopAccountService = webshopAccountService;
    }

    @Deprecated
    @RequestMapping(value = "/{id}", method = GET)
    public ResponseEntity<WebshopAccount> getWebShopAccount(@PathVariable("id") Long id) {
        WebshopAccount webshopAccount = webshopAccountService.getWebshopAccount(id);
        return generateResponse(webshopAccount, HttpStatus.OK, HttpStatus.BAD_REQUEST);
    }

    @RequestMapping(method = POST)
    public ResponseEntity<WebshopAccount> getWebshopAccount(@RequestBody WebshopAccount webshopAccount) {
        webshopAccount = webshopAccountService.getWebshopAccount(webshopAccount.getUserName(), webshopAccount.getPassword());
        return generateResponse(webshopAccount, HttpStatus.OK, HttpStatus.UNAUTHORIZED);
    }

    @RequestMapping(value = "/newaccount", method = POST)
    public ResponseEntity<WebshopAccount> saveWebshopAccount(@RequestBody WebshopAccount webshopAccount) {
        try {
            webshopAccount = webshopAccountService.saveWebshopAccount(webshopAccount);
            return generateResponse(webshopAccount, HttpStatus.CREATED, HttpStatus.CONFLICT);
        } catch (ValidationException e) {
            LOG.error("Exception while validating webshopAccount");
            return new ResponseEntity<>(webshopAccount, HttpStatus.NOT_ACCEPTABLE);
        }
    }


    private ResponseEntity<WebshopAccount> generateResponse(WebshopAccount account, HttpStatus statusSucces, HttpStatus statusFail) {
        HttpStatus statusResult;
        if (account != null) {
            statusResult = statusSucces;
        } else {
            statusResult = statusFail;
        }
        return new ResponseEntity<>(account, statusResult);
    }


}
