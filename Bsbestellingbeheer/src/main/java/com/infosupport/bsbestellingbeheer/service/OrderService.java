package com.infosupport.bsbestellingbeheer.service;

import com.infosupport.bsbestellingbeheer.domain.DatavaultData;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;

import java.util.Collection;

/**
 * Created by Sander on 16-1-17.
 */
public interface OrderService {
    Collection<Order> getAllOrders();

    Order getOrder(String id);

    Collection<Order> getAllPostedOrders(OrderState orderState);

    Order packOrder(String id) throws Exception;

    Order sendOrder(String id) throws Exception;

    Order saveOrder(Order order) throws NullPointerException;

    Collection<DatavaultData> getDatavaultDataInterval(long intervalInMinutes);

    Order createBsKey(Order order);
}
