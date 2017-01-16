package com.infosupport.resource;

import com.infosupport.domain.WebshopAccount;
import com.infosupport.service.WebshopAccountService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.http.HttpStatus;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

/**
 * Created by maart on 11-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class WebshopAccountResourceTest {

    @Mock
    private WebshopAccountService service;

    @InjectMocks
    private WebshopAccountResource resource;

    //Status creation only tested once. The reason for this is that it uses the same generateStatus method.

    @Test
    public void saveWebshopAccountStatusCreated() throws Exception {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().build();
        when(service.saveWebshopAccount(account)).thenReturn(account);

        //Act
        HttpStatus status = resource.saveWebshopAccount(account).getStatusCode();

        //Assert
        assertThat(status,is(HttpStatus.CREATED));
    }

    @Test
    public void saveWebshopAccountStatusConflict() throws Exception {
        //Arrange
        WebshopAccount account = WebshopAccount.builder().build();
        when(service.saveWebshopAccount(account)).thenReturn(null);

        //Act
        HttpStatus status = resource.saveWebshopAccount(account).getStatusCode();

        //Assert
        assertThat(status,is(HttpStatus.CONFLICT));
    }



}