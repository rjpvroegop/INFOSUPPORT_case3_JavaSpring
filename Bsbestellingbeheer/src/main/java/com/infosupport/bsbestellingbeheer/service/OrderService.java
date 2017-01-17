package com.infosupport.bsbestellingbeheer.service;

import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderState;
import com.infosupport.bsbestellingbeheer.domain.OrderStateException;

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
}
