package com.infosupport.bsbestellingbeheer;

import com.infosupport.bsbestellingbeheer.builders.OrderBuilder;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.repository.OrderRepository;
import com.infosupport.bsbestellingbeheer.service.impl.OrderServiceImpl;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import static org.hamcrest.Matchers.containsString;
import static org.mockito.Matchers.any;
import static org.mockito.Mockito.when;

/**
 * Created by rjpvr on 24-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class OrderValidationTest {
    @Rule
    public ExpectedException thrown = ExpectedException.none();

    @Mock
    private OrderRepository repo;

    @InjectMocks
    private OrderServiceImpl service;

    @Test
    public void saveOrder(){
        Order order = OrderBuilder.orderBuilder().build();

        when(repo.save(any(Order.class))).thenReturn(null);

        service.saveOrder(order);
    }

    @Test
    public void saveOrderNoCustomerException(){
        Order order = OrderBuilder.orderBuilder().customer(null).build();

        when(repo.save(any(Order.class))).thenReturn(null);

        thrown.expect(NullPointerException.class);
        thrown.expectMessage(containsString("Order provided without customer"));

        service.saveOrder(order);
    }

    @Test
    public void saveOrderNoProductsException(){
        Order order = OrderBuilder.orderBuilder().items(null).build();

        when(repo.save(any(Order.class))).thenReturn(null);

        thrown.expect(NullPointerException.class);
        thrown.expectMessage(containsString("Order provided without order items"));

        service.saveOrder(order);
    }

    @Test
    public void saveOrderNoBillingAddressException(){
        Order order = OrderBuilder.orderBuilder().billingAddress(null).build();

        when(repo.save(any(Order.class))).thenReturn(null);

        thrown.expect(NullPointerException.class);
        thrown.expectMessage(containsString("Order provided without billing address"));

        service.saveOrder(order);
    }

    @Test
    public void saveOrderNoShippingAddressException(){
        Order order = OrderBuilder.orderBuilder().shippingAddress(null).build();

        when(repo.save(any(Order.class))).thenReturn(null);

        thrown.expect(NullPointerException.class);
        thrown.expectMessage(containsString("Order provided without shipping address"));

        service.saveOrder(order);
    }

    @Test
    public void saveOrderNoOrderTimeNoException(){
        Order order = OrderBuilder.orderBuilder().orderTime(null).build();

        when(repo.save(any(Order.class))).thenReturn(null);

        service.saveOrder(order);
    }

    @Test
    public void saveOrderNoOrderPaymentMethodException(){
        Order order = OrderBuilder.orderBuilder().payment(null).build();

        when(repo.save(any(Order.class))).thenReturn(null);

        thrown.expect(NullPointerException.class);
        thrown.expectMessage(containsString("Order provided without order payment method"));

        service.saveOrder(order);
    }
}
