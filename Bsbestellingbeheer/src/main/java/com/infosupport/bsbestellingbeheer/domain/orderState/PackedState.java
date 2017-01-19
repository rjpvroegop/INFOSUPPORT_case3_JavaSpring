package com.infosupport.bsbestellingbeheer.domain.orderState;

import com.infosupport.bsbestellingbeheer.domain.AbstractOrderState;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderStateException;

import java.time.LocalDateTime;

/**
 * Created by Sander on 16-1-17.
 */
public class PackedState extends AbstractOrderState {
    public void send(Order order) throws OrderStateException {
        order.setOrderState(OrderState.SEND);
        order.setSendTime(LocalDateTime.now());
        order.setOrderState(OrderState.FINISHED);
    }

    @Override
    public String toString() {
        return "Packed";
    }
}
