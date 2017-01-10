package com.infosupport.service.impl;

import com.infosupport.domain.Category;
import com.infosupport.domain.Product;
import com.infosupport.repository.ProductRepository;
import com.infosupport.service.ProductService;
import org.hibernate.mapping.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Sander on 9-1-17.
 */

@Service("productService")
@Repository
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> findAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public List<Product> findAllActiveProducts() {
        return productRepository.findAll()
                .stream()
                .filter(Product -> Product.getAvailableFrom().isBefore(LocalDate.now()))
                .filter(Product -> Product.getAvailableUntil().isAfter(LocalDate.now()))
                .collect(Collectors.toList());
    }

    @Override
    public List<Product> findAllBikes() {
        return productRepository.findAll()
                .stream().filter(Product -> Product.getCategory().equals(Category.BIKE))
                .collect(Collectors.toList());
    }

    @Override
    public List<Product> findAllParts() {
        return productRepository.findAll()
                .stream().filter(Product -> Product.getCategory().equals(Category.PART))
                .collect(Collectors.toList());
    }

    @Override
    public Product findById(Long id){
        return productRepository.findOne(id);
    }
}
