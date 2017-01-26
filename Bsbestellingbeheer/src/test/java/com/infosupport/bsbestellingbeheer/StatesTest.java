package com.infosupport.bsbestellingbeheer;

import com.infosupport.bsbestellingbeheer.builders.OrderBuilder;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderStateException;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.ExpectedException;

import static org.hamcrest.core.Is.is;
import static org.junit.Assert.assertThat;

/**
 * Created by Sander on 18-1-17.
 */

public class StatesTest {

    @Rule
    public ExpectedException thrown = ExpectedException.none();

    @Test
    public void correctOrderProcessWithoutTreatment() throws OrderStateException {
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        order.pack();
        order.send();
        assertThat(OrderState.FINISHED, is(order.getOrderState()));
    }

    @Test
    public void correctOrderProcessWithTreatment() throws OrderStateException {
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.INTREATMENT).build();
        assertThat(order.getOrderState().toString(), is("In treatment"));
        order.post();
        assertThat(order.getOrderState().toString(), is("Posted"));
        order.pack();
        assertThat(order.getOrderState().toString(), is("Packed"));
        order.send();
        assertThat(order.getOrderState().toString(), is("Finished"));
        assertThat(OrderState.FINISHED, is(order.getOrderState()));
    }

    @Test
    public void correctOrderProcessCancelOnInTreatment() throws OrderStateException {
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.INTREATMENT).build();
        order.cancel();
        assertThat(OrderState.FINISHED, is(order.getOrderState()));
    }

    @Test
    public void correctOrderProcessCancelOnPosted() throws OrderStateException {
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        order.cancel();
        assertThat(OrderState.FINISHED, is(order.getOrderState()));
    }

    @Test
    public void inCorrectOrderProcessEarlySend() throws OrderStateException {
        thrown.expect(OrderStateException.class);
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        order.send();
    }

    @Test
    public void inCorrectOrderProcessCancelFinishedOrder() throws OrderStateException {
        thrown.expect(OrderStateException.class);
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        order.pack();
        order.send();
        order.cancel();
    }

    @Test
    public void inCorrectOrderProcessPackSendOrder() throws OrderStateException {
        thrown.expect(OrderStateException.class);
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        order.pack();
        order.send();
        order.pack();
    }

    @Test
    public void inCorrectOrderProcessPostCancelledOrder() throws OrderStateException {
        thrown.expect(OrderStateException.class);
        Order order = OrderBuilder.orderBuilder().orderState(OrderState.POSTED).build();
        order.cancel();
        order.post();
    }
}
