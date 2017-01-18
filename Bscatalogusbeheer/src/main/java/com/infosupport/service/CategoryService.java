package com.infosupport.service;

import com.infosupport.domain.Category;
import com.infosupport.domain.Supplier;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */
public interface CategoryService {
    List<Category> findAllCategories();
    List<Category> findAllCategoriesForCategory(String category);
}
