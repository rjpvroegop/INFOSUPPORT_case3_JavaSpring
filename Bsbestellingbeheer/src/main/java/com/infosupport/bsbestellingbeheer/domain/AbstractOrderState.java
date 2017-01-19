package com.infosupport.bsbestellingbeheer.domain;

/**
 * Created by Sander on 16-1-17.
 */
public abstract class AbstractOrderState {

    public void inTreatment(Order order) throws OrderStateException {
        throw new OrderStateException("Can not start treatment order");
    }

    public void post(Order order) throws OrderStateException {
        throw new OrderStateException("Can not post order");
    }

    public void pack(Order order) throws OrderStateException {
        throw new OrderStateException("Can not pack order");
    }

    public void send(Order order) throws OrderStateException {
        throw new OrderStateException("Can not send order");
    }

    public void cancel(Order order) throws OrderStateException {
        throw new OrderStateException("Can not cancel order");
    }
}
