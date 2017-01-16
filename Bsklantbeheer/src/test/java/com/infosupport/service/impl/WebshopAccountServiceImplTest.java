package com.infosupport.service.impl;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.repository.WebshopAccountRepository;
import org.junit.Rule;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import org.junit.rules.ExpectedException;

import javax.xml.bind.ValidationException;

import static com.infosupport.builders.CustomerBuilder.testCustomerBuilder;
import static org.hamcrest.CoreMatchers.*;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.when;

/**
 * Created by maart on 11-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class WebshopAccountServiceImplTest {

    @Rule
    public ExpectedException thrown = ExpectedException.none();

    @Mock
    private WebshopAccountRepository repo;

    @InjectMocks
    private WebshopAccountServiceImpl service;

    @Test
    public void saveWebshopAccountIsNull() throws ValidationException {
        thrown.expect(ValidationException.class);
        // Arrange & Act
        WebshopAccount result = service.saveWebshopAccount(null);
    }

    @Test
    public void saveWebshopAccountDoesNotExist() throws ValidationException {
        // Arrange
        WebshopAccount account = WebshopAccount.builder().userName("AAA").customer(testCustomerBuilder().build()).build();
        when(repo.findByUserName(account.getUserName())).thenReturn(null);
        when(repo.save(account)).thenReturn(WebshopAccount.builder().build());

        // Act
        WebshopAccount result = service.saveWebshopAccount(account);

        // Assert
        assertThat(result, is(notNullValue()));
    }

    @Test
    public void saveWebshopAccountExists() throws ValidationException {
        thrown.expect(ValidationException.class);
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("AAA").customer(testCustomerBuilder().build()).build();
        when(repo.findByUserName(account.getUserName())).thenReturn(account);
        when(repo.save(account)).thenReturn(null);

        //ACT
        WebshopAccount result = service.saveWebshopAccount(account);

    }

    @Test
    public void getWebshopAccountNull() {
        //Arrange
        when(repo.findByUserName(null)).thenReturn(null);

        //Act
        WebshopAccount result = service.getWebshopAccount(null, null);

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountNullPassword() {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").customer(testCustomerBuilder().build()).build();
        when(repo.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = service.getWebshopAccount("aa", null);

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountNullUserName() {
        // Is same as getWebShopAccountNull, but if there are ever future changes to the implementation, this should not fail.
        //Arrange
        when(repo.findByUserName(null)).thenReturn(null);

        //Act
        WebshopAccount result = service.getWebshopAccount(null, "aaa");

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountInvalidPassword() {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").password("bb").customer(testCustomerBuilder().build()).build();
        when(repo.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = service.getWebshopAccount("aa", "cc");

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountValidData() {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").password("bb").customer(testCustomerBuilder().build()).build();
        when(repo.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = service.getWebshopAccount("aa", "bb");

        //Assert
        assertThat(result, is(account));
    }

}