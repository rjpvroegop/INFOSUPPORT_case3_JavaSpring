package com.infosupport.resource;

import com.infosupport.domain.Customer;
import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.WebshopAccountRepository;
import com.infosupport.service.WebshopAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/{id}", method = GET)
    public WebshopAccount getWebShopAccount(@PathVariable("id") Long id) {
        return webshopAccountService.getWebshopAccount(id);
    }

    @RequestMapping(value = "/newaccount", method = POST)
    public ResponseEntity<WebshopAccount> saveWebshopAccount(@RequestBody WebshopAccount webshopAccount) {
        webshopAccount = webshopAccountService.saveWebshopAccount(webshopAccount);
        HttpStatus result;
        if (webshopAccount != null){
            result = HttpStatus.CREATED;
        }
        else{
            result = HttpStatus.CONFLICT;
        }
        return new ResponseEntity<>(webshopAccount, result);
    }

}