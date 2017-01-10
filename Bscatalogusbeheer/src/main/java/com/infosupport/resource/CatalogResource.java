package com.infosupport.resource;

import com.infosupport.domain.Product;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
@RestController
@RequestMapping("/catalog")
public class CatalogResource {

    @RequestMapping("/products")
    public Collection<Product> accounts() {
        return null;
    }

}
