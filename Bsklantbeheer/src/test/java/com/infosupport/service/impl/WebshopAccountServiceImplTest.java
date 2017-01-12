package com.infosupport.service.impl;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.WebshopAccountRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.assertThat;
import static org.mockito.Matchers.isNotNull;
import static org.mockito.Matchers.isNull;
import static org.mockito.Mockito.when;

/**
 * Created by maart on 11-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class WebshopAccountServiceImplTest {

    @Mock
    private WebshopAccountRepository repo;

    @InjectMocks
    private WebshopAccountServiceImpl service;

    @Test
    public void saveWebshopAccountIsNull() {
        // Arrange & Act
        WebshopAccount result = service.saveWebshopAccount(null);

        // Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void saveWebshopAccountDoesNotExist() {
        // Arrange
        WebshopAccount account = WebshopAccount.builder().userName("AAA").build();
        when(repo.findByUserName("AAA")).thenReturn(null);
        when(repo.save(account)).thenReturn(WebshopAccount.builder().build());

        // Act
        WebshopAccount result = service.saveWebshopAccount(account);

        // Assert
        assertThat(result, is(notNullValue()));
    }

    @Test
    public void saveWebshopAccountExists() throws Exception {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("AAA").build();
        when(repo.findByUserName(account.getUserName())).thenReturn(account);
        when(repo.save(account)).thenReturn(null);

        //ACT
        WebshopAccount result = service.saveWebshopAccount(account);

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountNull(){
        //Arrange
        when(repo.findByUserName(null)).thenReturn(null);

        //Act
        WebshopAccount result = service.getWebshopAccount(null, null);

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountNullPassword(){
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").build();
        when(repo.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = service.getWebshopAccount("aa", null);

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountNullUserName(){
        // Is same as getWebShopAccountNull, but if there are ever future changes to the implementation, this should not fail.
        //Arrange
        when(repo.findByUserName(null)).thenReturn(null);

        //Act
        WebshopAccount result = service.getWebshopAccount(null, "aaa");

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountInvalidPassword(){
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").password("bb").build();
        when(repo.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = service.getWebshopAccount("aa", "cc");

        //Assert
        assertThat(result, is(nullValue()));
    }

}