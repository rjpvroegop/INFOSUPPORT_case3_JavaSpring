package com.infosupport.bsbestellingbeheer;

import com.infosupport.bsbestellingbeheer.builders.OrderBuilder;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.repository.OrderRepository;
import com.infosupport.bsbestellingbeheer.service.impl.OrderServiceImpl;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.when;

/**
 * Created by Sander on 24-1-17.
 */
@RunWith(MockitoJUnitRunner.class)
public class OrderServiceImplTest {

    @Rule
    public ExpectedException thrown = ExpectedException.none();

    @Mock
    private OrderRepository repo;

    @InjectMocks
    private OrderServiceImpl service;

    @Test
    public void SendProductCorrect() throws Exception {
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.PACKED).build();
        when(repo.findOne(order.getId())).thenReturn(order);
        service.sendOrder(order.getId());
        assertThat(order.getOrderState(), is(OrderState.FINISHED));
    }

    @Test
    public void SendProductIncorrectId() throws Exception {
        thrown.expect(NullPointerException.class);
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.PACKED).build();
        when(repo.findOne(order.getId())).thenReturn(null);
        service.sendOrder(order.getId());
    }

    @Test
    public void PackProductCorrect() throws Exception {
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        when(repo.findOne(order.getId())).thenReturn(order);
        service.packOrder(order.getId());
        assertThat(order.getOrderState(), is(OrderState.PACKED));
    }

    @Test
    public void PackProductIncorrectId() throws Exception {
        thrown.expect(NullPointerException.class);
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        when(repo.findOne(order.getId())).thenReturn(null);
        service.packOrder(order.getId());
    }
}
