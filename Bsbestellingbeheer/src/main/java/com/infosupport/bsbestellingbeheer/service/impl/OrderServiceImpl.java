package com.infosupport.bsbestellingbeheer.service.impl;

import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.repository.OrderRepository;
import com.infosupport.bsbestellingbeheer.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Collection;

/**
 * Created by Sander on 16-1-17.
 */
@Service
public class OrderServiceImpl implements OrderService {

    private OrderRepository orderRepository;

    @Autowired
    public OrderServiceImpl(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    @Override
    public Collection<Order> getAllOrders() {
        return orderRepository.findAll();
    }

    public Order getOrder(String id) {
        return orderRepository.findOne(id);
    }

    @Override
    public Collection<Order> getAllPostedOrders(OrderState orderState) {
        return orderRepository.findByOrderState(orderState);
    }

    @Override
    public Order packOrder(String id) throws Exception {
        Order order = orderRepository.findOne(id);
        if (order == null)
            throw new Exception("Order not found");
        order.pack();
        orderRepository.save(order);
        return order;
    }

    @Override
    public Order sendOrder(String id) throws Exception {
        Order order = orderRepository.findOne(id);
        if (order == null)
            throw new Exception("Order not found");
        order.send();
        orderRepository.save(order);
        return order;
    }

    @Override
    public Order saveOrder(Order order) throws Exception {
        if(order == null){
            throw new Exception("Null order");
        } else {
            //create business key order
            LocalDateTime startOfDay = order.getOrderTime().with(LocalTime.MIN);
            LocalDateTime endOfDay = order.getOrderTime().with(LocalTime.MAX);
            long numberOfOrdersForOrderDateTime = orderRepository.countByOrderTimeBetween(startOfDay, endOfDay);
            long bsKeyNumber = numberOfOrdersForOrderDateTime + 1;
            String bsKeyPrefix = "ORD";
            String bsKeyDate = order.getOrderTime().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
            String bsKeyPostfix = String.valueOf(bsKeyNumber);
            while(bsKeyPostfix.length() != 5){
                bsKeyPostfix = "0" + bsKeyPostfix;
            }
            String bsKey = bsKeyPrefix + bsKeyDate + "-"+ bsKeyPostfix;
            order.setBsKey(bsKey);

            return orderRepository.save(order);
        }
    }
}
