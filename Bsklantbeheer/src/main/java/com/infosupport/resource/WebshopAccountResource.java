package com.infosupport.resource;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.WebshopAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * Created by maart on 10-1-2017.
 */
@RestController
@RequestMapping("accounts")
public class WebshopAccountResource {

    private WebshopAccountRepository webshopAccountRepository;

    @Autowired
    public WebshopAccountResource(WebshopAccountRepository webshopAccountRepository) {
        this.webshopAccountRepository = webshopAccountRepository;
    }

    @RequestMapping(value = "/{id}", method = GET)
    public WebshopAccount getWebShopAccount(@PathVariable("id") Long id) {
        return webshopAccountRepository.findOne(id);
    }

    @RequestMapping(value = "/newCustomer", method = POST)
    public ResponseEntity<WebshopAccount> saveWebshopAccount(@RequestBody WebshopAccount webshopAccount) {
        webshopAccountRepository.save(webshopAccount);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

}
