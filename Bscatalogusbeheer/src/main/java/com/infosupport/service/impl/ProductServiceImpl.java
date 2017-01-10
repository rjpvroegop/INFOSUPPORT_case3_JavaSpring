package com.infosupport.service.impl;

import com.infosupport.domain.Product;
import com.infosupport.repository.ProductRepository;
import com.infosupport.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */

@Service("productService")
@Repository
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }
}
