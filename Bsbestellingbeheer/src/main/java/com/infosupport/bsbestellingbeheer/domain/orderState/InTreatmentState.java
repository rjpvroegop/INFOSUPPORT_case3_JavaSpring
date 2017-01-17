package com.infosupport.bsbestellingbeheer.domain.orderState;

import com.infosupport.bsbestellingbeheer.domain.AbstractOrderState;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderState;
import com.infosupport.bsbestellingbeheer.domain.OrderStateException;

/**
 * Created by Sander on 16-1-17.
 */
public class InTreatmentState extends AbstractOrderState {

    public void post(Order order) throws OrderStateException {
        order.setOrderState(OrderState.POSTED);
    }

    public void cancel(Order order) throws OrderStateException {
        order.setOrderState(OrderState.FINISHED);
    }

    @Override
    public String toString() {
        return "In treatment";
    }
}
