package com.infosupport.bscatalogusbeheer.service.impl;

import com.infosupport.bscatalogusbeheer.domain.Category;
import com.infosupport.bscatalogusbeheer.domain.Product;
import com.infosupport.bscatalogusbeheer.repository.CategoryRepository;
import com.infosupport.bscatalogusbeheer.repository.ProductRepository;
import com.infosupport.bscatalogusbeheer.service.impl.CategoryServiceImpl;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.when;

/**
 * Created by maart on 11-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class CategoryServiceImplTest {

    @Mock
    private ProductRepository prodRepo;

    @Mock
    private CategoryRepository catRepo;

    @InjectMocks
    private CategoryServiceImpl service;

    private List<Category> categories = new ArrayList<>();

    private List<Product> products = new ArrayList<>();


    @Before
    public void init() {
        Category category =  new Category();
        categories.add(new Category(1L, "cat1"));
        categories.add(new Category(2L, "cat2"));
        categories.add(new Category(3L, "cat3"));
        categories.add(new Category(4L, "cat4"));
        categories.add(new Category(5L, "cat5"));

        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().plusDays(1))
                .categoryList(Arrays.asList(categories.get(0), categories.get(3)))
                .build());
        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().minusDays(1))
                .categoryList(Arrays.asList(categories.get(1), categories.get(4)))
                .build());
        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().plusDays(1))
                .categoryList(Arrays.asList(categories.get(2), categories.get(3)))
                .build());
        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().plusDays(1))
                .categoryList(Arrays.asList(categories.get(2), categories.get(4)))
                .build());
    }

    @Test
    public void findAllCategoriesForCategoryEmptyList() throws Exception {
        //Arrange
        when(catRepo.findByName("catName")).thenReturn(null);

        //Act
        List<Category> categories = service.findAllCategoriesForCategory("catName");

        //Assert
        assertThat(categories.size(), is(0));
    }

    @Test
    public void findAllCategoriesForCategory() throws Exception {
        //Arrange
        when(catRepo.findByName("cat3")).thenReturn(categories.get(2));
        when(prodRepo.findAll()).thenReturn(products);

        //Act
        List<Category> categories = service.findAllCategoriesForCategory("cat3");

        //Assert
        assertThat(categories.get(0), is(this.categories.get(3)));
        assertThat(categories.get(0).getId(), is(4L));
        assertThat(categories.get(0).getName(), is("cat4"));
        assertThat(categories.get(1), is(this.categories.get(4)));
    }

    @Test
    public void findAllCategories() throws Exception {
        //Arrange
        when(catRepo.findAll()).thenReturn(categories);

        //Act
        List<Category> categories = service.findAllCategories();

        //Assert
        assertThat(categories.size(), is(1));
    }
}