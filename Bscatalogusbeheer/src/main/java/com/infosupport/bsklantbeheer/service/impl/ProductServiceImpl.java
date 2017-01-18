package com.infosupport.bsklantbeheer.service.impl;

import com.infosupport.bsklantbeheer.domain.Product;
import com.infosupport.bsklantbeheer.repository.CategoryRepository;
import com.infosupport.bsklantbeheer.repository.ProductRepository;
import com.infosupport.bsklantbeheer.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
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

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Product> findAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public List<Product> findAllActiveProducts() {
        return productRepository.findAll()
                .stream()
                .filter(Product -> (Product.getAvailableFrom() == null || Product.getAvailableFrom().isBefore(LocalDate.now())))
                .filter(Product -> (Product.getAvailableUntil() == null || Product.getAvailableUntil().isAfter(LocalDate.now())))
                .collect(Collectors.toList());
    }

    @Override
    public List<Product> findActiveProductsForCategory(Long id) {
        return findAllActiveProducts()
                .stream()
                .filter(Product -> (Product.getCategoryList().contains(categoryRepository.findOne(id))))
                .collect(Collectors.toList());
    }

    @Override
    public Product findById(Long id) {
        return productRepository.findOne(id);
    }
}
