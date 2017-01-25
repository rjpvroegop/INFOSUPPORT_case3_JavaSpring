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

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.when;

/**
 * Created by Kenzo Dominicus on 24-1-2017.
 */
@RunWith(MockitoJUnitRunner.class)
public class BsKeyOrderTest {
    @Rule
    public ExpectedException thrown = ExpectedException.none();

    @Mock
    private OrderRepository repo;

    @InjectMocks
    private OrderServiceImpl service;

    @Test
    public void createOrderWithBsKeyAndWithNoOrdersOnTimeOfOrder() {
        Order order = OrderBuilder.orderBuilder().build();
        when(repo.countByOrderTimeBetween(LocalDateTime.now().with(LocalTime.MIN), LocalDateTime.now().with(LocalTime.MAX))).thenReturn(0L);
        String expectedBsKey = "ORD" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd")) + "-00001";
        order = service.createBsKey(order);
        assertThat(order.getBsKey(), is(expectedBsKey));
    }

    @Test
    public void createOrderWithBsKeyAndWithFourOrdersOnTimeOfOrder() {
        Order order = OrderBuilder.orderBuilder().build();
        when(repo.countByOrderTimeBetween(LocalDateTime.now().with(LocalTime.MIN), LocalDateTime.now().with(LocalTime.MAX))).thenReturn(4L);
        String expectedBsKey = "ORD" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd")) + "-00005";
        order = service.createBsKey(order);
        assertThat(order.getBsKey(), is(expectedBsKey));
    }
}
