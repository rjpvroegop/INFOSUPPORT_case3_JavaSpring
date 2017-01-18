package com.infosupport.bscatalogusbeheer.service.impl;

import com.infosupport.bscatalogusbeheer.domain.Category;
import com.infosupport.bscatalogusbeheer.repository.CategoryRepository;
import com.infosupport.bscatalogusbeheer.repository.ProductRepository;
import com.infosupport.bscatalogusbeheer.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Sander on 9-1-17.
 */

@Service("categoryService")
@Repository
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Category> findAllCategories() {
        return categoryRepository.findAll();
    }

    @Override
    public List<Category> findAllCategoriesForCategory(String categoryName) {
        Category category = categoryRepository.findByName(categoryName);
        if (category == null)
            return new ArrayList<>();

        return productRepository.findAll()
                .stream()
                .filter(product -> product.getCategoryList().contains(category))
                .flatMap(product -> product.getCategoryList().stream())
                .distinct()
                .filter(category1 -> !category1.equals(category))
                .collect(Collectors.toList());
    }

}
