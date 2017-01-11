package com.infosupport.resource;

import com.infosupport.domain.Product;
import com.infosupport.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
@CrossOrigin
@RestController
@RequestMapping("/catalog")
public class CatalogResource {

    @Autowired
    private ProductService productService;

    @RequestMapping("/products")
    public Collection<Product> getAllProducts() {
        return productService.findAllProducts();
    }

    @RequestMapping("/products/{productid}")
    public Product getProductById(@PathVariable("productid") Long productid) {
        return productService.findById(productid);
    }

    @RequestMapping("/activeproducts")
    public Collection<Product> getAllActiveProducts() {
        return productService.findAllActiveProducts();
    }

    @RequestMapping("/activeproductsforcategory/{categoryid}")
    public Collection<Product> getAllBikes(@PathVariable("categoryid") Long categoryid) {
        return productService.findActiveProductsForCategory(categoryid);
    }
}
