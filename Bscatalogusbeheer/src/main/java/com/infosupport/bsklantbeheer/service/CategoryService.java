package com.infosupport.bsklantbeheer.service;

import com.infosupport.bsklantbeheer.domain.Category;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */
public interface CategoryService {
    List<Category> findAllCategories();

    List<Category> findAllCategoriesForCategory(String category);
}
