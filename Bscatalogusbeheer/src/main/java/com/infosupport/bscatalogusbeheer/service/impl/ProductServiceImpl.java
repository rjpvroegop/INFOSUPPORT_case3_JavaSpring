package com.infosupport.bscatalogusbeheer.service.impl;

import com.infosupport.bscatalogusbeheer.domain.Product;
import com.infosupport.bscatalogusbeheer.repository.CategoryRepository;
import com.infosupport.bscatalogusbeheer.repository.ProductRepository;
import com.infosupport.bscatalogusbeheer.service.ProductService;
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
                .filter(product -> (product.getAvailableFrom() == null || product.getAvailableFrom().isBefore(LocalDate.now())))
                .filter(product -> (product.getAvailableUntil() == null || product.getAvailableUntil().isAfter(LocalDate.now())))
                .collect(Collectors.toList());
    }

    @Override
    public List<Product> findActiveProductsForCategory(Long id) {
        return findAllActiveProducts()
                .stream()
                .filter(product -> (product.getCategoryList().contains(categoryRepository.findOne(id))))
                .collect(Collectors.toList());
    }

    @Override
    public Product findById(Long id) {
        return productRepository.findOne(id);
    }
}
