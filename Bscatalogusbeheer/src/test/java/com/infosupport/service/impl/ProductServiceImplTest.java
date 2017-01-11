package com.infosupport.service.impl;

import com.infosupport.domain.Category;
import com.infosupport.domain.Product;
import com.infosupport.repository.CategoryRepository;
import com.infosupport.repository.ProductRepository;
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
public class ProductServiceImplTest {

    @Mock
    private ProductRepository prodRepo;

    @Mock
    private CategoryRepository catRepo;

    @InjectMocks
    private ProductServiceImpl service;

    private List<Category> categories = new ArrayList<>();

    private List<Product> products = new ArrayList<>();


    @Before
    public void init(){
        categories.add(new Category(1L, "cat1"));
        categories.add(new Category(2L, "cat2"));
        categories.add(new Category(3L, "cat3"));
        categories.add(new Category(4L, "cat4"));
        categories.add(new Category(5L, "cat5"));

        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().plusDays(1))
                .categoryList(Arrays.asList(categories.get(0), categories.get(4)))
                .build());
        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().minusDays(1))
                .categoryList(Arrays.asList(categories.get(1), categories.get(4)))
                .build());
        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().plusDays(1))
                .categoryList(Arrays.asList(categories.get(2), categories.get(4)))
                .build());
        products.add(Product.builder()
                .availableFrom(LocalDate.now().minusDays(3))
                .availableUntil(LocalDate.now().plusDays(1))
                .categoryList(Arrays.asList(categories.get(3), categories.get(4)))
                .build());
    }

    @Test
    public void findAllActiveProducts3Active1Inactive() throws Exception {
        //Arrange
        when(prodRepo.findAll()).thenReturn(products);

        //Act
        List<Product> products = service.findAllActiveProducts();

        //Assert
        assertThat(products.size(), is(3));
    }

    @Test
    public void findAllActiveProductsNullDates() throws Exception {
        //Arrange
        when(prodRepo.findAll()).thenReturn(Arrays.asList(new Product(), new Product()));

        //Act
        List<Product> products = service.findAllActiveProducts();

        //Assert
        assertThat(products.size(), is(2));
    }

    @Test
    public void findActiveProductsForCategory() throws Exception {
        //Arrange
        when(prodRepo.findAll()).thenReturn(products);
        when(catRepo.findOne(1L)).thenReturn(categories.get(0));
        //Act
        List<Product> products = service.findActiveProductsForCategory(1L);

        //Assert
        assertThat(products.size(), is(1));
    }

    @Test
    public void findActiveProductsForNoCategory() throws Exception {
        //Arrange
        when(prodRepo.findAll()).thenReturn(products);
        when(catRepo.findOne(1L)).thenReturn(null);
        //Act
        List<Product> products = service.findActiveProductsForCategory(1L);

        //Assert
        assertThat(products.size(), is(0));
    }

}