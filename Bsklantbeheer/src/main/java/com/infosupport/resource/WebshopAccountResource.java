package com.infosupport.resource;

import com.infosupport.domain.WebshopAccount;
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
    public ResponseEntity<WebshopAccount> getWebShopAccount(@PathVariable("id") Long id) {
        WebshopAccount account = webshopAccountService.getWebshopAccount(id);
        HttpStatus status;
        if (account != null) {
            status = HttpStatus.OK;
        } else {
            status = HttpStatus.BAD_REQUEST;
        }
        return new ResponseEntity<>(account, status);
    }

    @RequestMapping(method = POST)
    public ResponseEntity<WebshopAccount> getWebshopAccount(@RequestBody WebshopAccount webshopAccount) {
        webshopAccount = webshopAccountService.getWebshopAccount(webshopAccount.getUserName(), webshopAccount.getPassword());
        HttpStatus status;
        if (webshopAccount != null) {
            status = HttpStatus.OK;
        } else {
            status = HttpStatus.UNAUTHORIZED;
        }
        return new ResponseEntity<>(webshopAccount, status);
    }

    @RequestMapping(value = "/newaccount", method = POST)
    public ResponseEntity<WebshopAccount> saveWebshopAccount(@RequestBody WebshopAccount webshopAccount) {
        webshopAccount = webshopAccountService.saveWebshopAccount(webshopAccount);
        HttpStatus status;
        if (webshopAccount != null) {
            status = HttpStatus.CREATED;
        } else {
            status = HttpStatus.CONFLICT;
        }
        return new ResponseEntity<>(webshopAccount, status);
    }

}
