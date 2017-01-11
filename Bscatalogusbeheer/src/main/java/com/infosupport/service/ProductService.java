package com.infosupport.service;

import com.infosupport.domain.Product;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */
public interface ProductService {
    List<Product> findAllProducts();
    List<Product> findAllActiveProducts();
    List<Product> findActiveProductsForCategory(Long id);
    Product findById(Long id);
}
