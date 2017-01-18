package com.infosupport.resource;

import com.infosupport.domain.Category;
import com.infosupport.domain.Supplier;
import com.infosupport.service.CategoryService;
import com.infosupport.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by Sander on 9-1-17.
 */
@CrossOrigin
@RestController
@RequestMapping("/categories")
public class CategoryResource {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping
    public Collection<Category> getCategories() {
        return categoryService.findAllCategories();
    }

    @RequestMapping(value = "/{name}", method = GET)
    public Collection<Category> getCategoriesForCategory(@PathVariable("name") String name) {
        return categoryService.findAllCategoriesForCategory(name);
    }
}
