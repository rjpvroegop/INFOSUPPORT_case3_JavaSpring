package com.infosupport.bsklantbeheer.service.impl;

import com.infosupport.bsklantbeheer.domain.Address;
import com.infosupport.bsklantbeheer.domain.Customer;
import com.infosupport.bsklantbeheer.repository.CustomerRepository;
import org.hamcrest.core.Is;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import java.util.Arrays;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.when;

/**
 * Created by maart on 10-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class CustomerServiceImplTest {

    @Mock
    private CustomerRepository customerRepository;

    @InjectMocks
    private CustomerServiceImpl customerService;


    @Test
    public void getCustomerNoAddresses() throws Exception {
        //Arrange
        when(customerRepository.findOne(1L)).thenReturn(Customer.builder().build());
        //Act & Assert
        assertThat(customerService.getCustomer(1L).getAddresses(), is(nullValue()));
    }

    @Test
    public void getCustomerOneNotDeletedAddress() throws Exception {
        //Arrange
        Customer customer = Customer.builder().addresses(Arrays.asList(Address.builder().build())).build();
        when(customerRepository.findOne(1L)).thenReturn(customer);

        //Act
        int amount = customerService.getCustomer(1L).getAddresses().size();

        //Assert
        assertThat(amount, is(1));
    }

    @Test
    public void getCustomerOneNotDeletedOneDeletedAddress() throws Exception {
        //Arrange
        Customer customer = Customer.builder().addresses(Arrays.asList(Address.builder().build(), Address.builder().deleted(true).build())).build();
        when(customerRepository.findOne(1L)).thenReturn(customer);

        //Act
        int amount = customerService.getCustomer(1L).getAddresses().size();

        //Assert
        assertThat(amount, is(1));
    }

    @Test
    public void getCustomerOneDeletedAddress() throws Exception {
        //Arrange
        Customer customer = Customer.builder().addresses(Arrays.asList(Address.builder().deleted(true).build())).build();
        when(customerRepository.findOne(1L)).thenReturn(customer);

        //Act
        int amount = customerService.getCustomer(1L).getAddresses().size();

        //Assert
        assertThat(amount, is(0));
    }

    @Test
    public void getNoneExistentCustomer() throws Exception {
        //Arrange
        when(customerRepository.findOne(1L)).thenReturn(null);

        Customer customer = customerService.getCustomer(1L);

        assertThat(customer, is(nullValue()));
    }

    @Test
    public void createCustomerWithNoCustomersInDB() {
        Customer customer = Customer.builder().addresses(Arrays.asList(Address.builder().build())).build();
        when(customerRepository.count()).thenReturn(0L);
        String expectedBsKey = "CUST" + "000001";
        customer = customerService.createBsKeyCustomer(customer);
        assertThat(customer.getBsKey(), Is.is(expectedBsKey));
    }

    @Test
    public void createCustomerWithFourCustomersInDB() {
        Customer customer = Customer.builder().addresses(Arrays.asList(Address.builder().build())).build();
        when(customerRepository.count()).thenReturn(4L);
        String expectedBsKey = "CUST" + "000005";
        customer = customerService.createBsKeyCustomer(customer);
        assertThat(customer.getBsKey(), Is.is(expectedBsKey));
    }

}