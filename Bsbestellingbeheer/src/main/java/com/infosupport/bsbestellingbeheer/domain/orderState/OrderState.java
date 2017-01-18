package com.infosupport.bsbestellingbeheer.domain.orderState;

import com.infosupport.bsbestellingbeheer.domain.AbstractOrderState;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderStateException;

/**
 * Created by Sander on 16-1-17.
 */
public enum OrderState {
    INTREATMENT(new InTreatmentState()),
    FINISHED(new FinishedState()),
    PACKED(new PackedState()),
    POSTED(new PostedState()),
    SEND(new SendState());

    private final AbstractOrderState orderState;

    OrderState(AbstractOrderState orderState) {
        this.orderState = orderState;
    }

    public void inTreatment(Order order) throws OrderStateException {
        orderState.inTreatment(order);
    }

    public void post(Order order) throws OrderStateException {
        orderState.post(order);
    }

    public void pack(Order order) throws OrderStateException {
        orderState.pack(order);
    }

    public void send(Order order) throws OrderStateException {
        orderState.send(order);
    }

    public void cancel(Order order) throws OrderStateException {
        orderState.cancel(order);
    }

    @Override
    public String toString() {
        return orderState.toString();
    }
}
