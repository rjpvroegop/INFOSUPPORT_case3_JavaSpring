package com.infosupport.bsklantbeheer.service.impl;

import com.infosupport.bsklantbeheer.domain.Customer;
import com.infosupport.bsklantbeheer.domain.WebshopAccount;
import com.infosupport.bsklantbeheer.repository.CustomerRepository;
import com.infosupport.bsklantbeheer.repository.WebshopAccountRepository;
import com.infosupport.bsklantbeheer.service.CustomerService;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.internal.matchers.InstanceOf;
import org.mockito.runners.MockitoJUnitRunner;

import javax.xml.bind.ValidationException;

import static com.infosupport.bsklantbeheer.builders.CustomerBuilder.testCustomerBuilder;
import static org.hamcrest.core.Is.is;
import static org.hamcrest.core.IsNull.notNullValue;
import static org.hamcrest.core.IsNull.nullValue;
import static org.junit.Assert.assertThat;
import static org.mockito.Matchers.any;
import static org.mockito.Mockito.when;


/**
 * Created by maart on 11-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class WebshopAccountServiceImplTest {

    @Rule
    public ExpectedException thrown = ExpectedException.none();

    @Mock
    private WebshopAccountRepository webshopAccountRepository;

    @InjectMocks
    private WebshopAccountServiceImpl webshopAccountService;

    @Mock
    private CustomerServiceImpl customerService;

    @Test
    public void saveWebshopAccountIsNull() throws ValidationException {
        thrown.expect(ValidationException.class);
        // Arrange & Act
        WebshopAccount result = webshopAccountService.saveWebshopAccount(null);
    }

    @Test
    public void saveWebshopAccountDoesNotExist() throws ValidationException {
        // Arrange
        WebshopAccount account = WebshopAccount.builder().userName("AAA").customer(testCustomerBuilder().bsKey("CUST000001").build()).build();
        when(webshopAccountRepository.findByUserName(account.getUserName())).thenReturn(null);
        when(webshopAccountRepository.save(account)).thenReturn(WebshopAccount.builder().build());
        when(customerService.createBsKeyCustomer(any(Customer.class))).thenReturn(account.getCustomer());

        // Act
        WebshopAccount result = webshopAccountService.saveWebshopAccount(account);

        // Assert
        assertThat(result, is(notNullValue()));
    }

    @Test
    public void saveWebshopAccountExists() throws ValidationException {
        thrown.expect(ValidationException.class);
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("AAA").customer(testCustomerBuilder().build()).build();
        when(webshopAccountRepository.findByUserName(account.getUserName())).thenReturn(account);
        when(webshopAccountRepository.save(account)).thenReturn(null);

        //ACT
        WebshopAccount result = webshopAccountService.saveWebshopAccount(account);

    }

    @Test
    public void getWebshopAccountNull() {
        //Arrange
        when(webshopAccountRepository.findByUserName(null)).thenReturn(null);

        //Act
        WebshopAccount result = webshopAccountService.login(null, null);

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountNullPassword() {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").customer(testCustomerBuilder().build()).build();
        when(webshopAccountRepository.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = webshopAccountService.login("aa", null);

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountNullUserName() {
        // Is same as getWebShopAccountNull, but if there are ever future changes to the implementation, this should not fail.
        //Arrange
        when(webshopAccountRepository.findByUserName(null)).thenReturn(null);

        //Act
        WebshopAccount result = webshopAccountService.login(null, "aaa");

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountInvalidPassword() {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").password("bb").customer(testCustomerBuilder().build()).build();
        when(webshopAccountRepository.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = webshopAccountService.login("aa", "cc");

        //Assert
        assertThat(result, is(nullValue()));
    }

    @Test
    public void getWebshopAccountValidData() {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().userName("aa").password("bb").customer(testCustomerBuilder().build()).build();
        when(webshopAccountRepository.findByUserName(account.getUserName())).thenReturn(account);

        //Act
        WebshopAccount result = webshopAccountService.login("aa", "bb");

        //Assert
        assertThat(result, is(account));
    }

}