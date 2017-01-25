package com.infosupport.bsbestellingbeheer.service.impl;

import com.infosupport.bsbestellingbeheer.domain.DatavaultData;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderItem;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.repository.OrderRepository;
import com.infosupport.bsbestellingbeheer.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Created by Sander on 16-1-17.
 */
@Service
public class OrderServiceImpl implements OrderService {

    private float shippingcost = 5F;
    private float noshippingcost = 0F;
    private float shippingcostTippingpoint = 200F;

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
            throw new NullPointerException("Order not found");
        order.pack();
        orderRepository.save(order);
        return order;
    }

    @Override
    public Order sendOrder(String id) throws Exception {
        Order order = orderRepository.findOne(id);
        if (order == null)
            throw new NullPointerException("Order not found");
        order.send();
        orderRepository.save(order);
        return order;
    }

    @Override
    public Order saveOrder(Order order) throws NullPointerException {
        // if order is not valid, throw exception
        validateOrder(order);

        order = createBsKey(order);

        order = calculateShippingcost(order);

        return orderRepository.save(order);
    }

    private Order calculateShippingcost(Order order) {
        float price = calculateTotalOrderPrice(order);
        if (price >= shippingcostTippingpoint) {
            order.setShippingcost(shippingcost);
        } else {
            order.setShippingcost(noshippingcost);
        }
        return order;
    }

    private float calculateTotalOrderPrice(Order order) {
        float price = 0;
        for (OrderItem orderItem : order.getItems()) {
            price += orderItem.getProduct().getPrice() * orderItem.getAmount();
        }
        return price;
    }

    private Boolean validateOrder(Order order) {
        if (order == null) {
            throw new NullPointerException("No order provided");
        } else if (order.getCustomer() == null) {
            throw new NullPointerException("Order provided without customer");
        } else if (order.getBillingAddress() == null) {
            throw new NullPointerException("Order provided without billing address");
        } else if (order.getShippingAddress() == null) {
            throw new NullPointerException("Order provided without shipping address");
        } else if (order.getItems() == null || order.getItems().size() == 0) {
            throw new NullPointerException("Order provided without order items");
        } else if (order.getOrderTime() == null) {
            order.setOrderTime(LocalDateTime.now());
        } else if (order.getPayment() == null) {
            throw new NullPointerException("Order provided without order payment method");
        }

        return true;
    }

    @Override
    public Collection<DatavaultData> getDatavaultDataInterval(long intervalInMinutes) {
        Collection<Order> orders = orderRepository.findByOrderTimeBetween(LocalDateTime.now().minusMinutes(intervalInMinutes), LocalDateTime.now());
        Collection<DatavaultData> datavaultDataCollection = new ArrayList<>();
        for (Order order : orders) {
            Collection<String> bsKeysProducts = new ArrayList<>();
            for (OrderItem orderItem : order.getItems()) {
                bsKeysProducts.add(orderItem.getProduct().getBsKey());
            }
            String orderKey = order.getBsKey();
            String customerKey = null;
            if (order.getCustomer() != null) {
                customerKey = order.getCustomer().getBsKey();
            }
            datavaultDataCollection.add(new DatavaultData(orderKey, customerKey, bsKeysProducts));
        }
        return datavaultDataCollection;
    }

    @Override
    public Order createBsKey(Order order) {
        //create business key order
        LocalDateTime startOfDay = order.getOrderTime().with(LocalTime.MIN);
        LocalDateTime endOfDay = order.getOrderTime().with(LocalTime.MAX);
        long numberOfOrdersForOrderDateTime = orderRepository.countByOrderTimeBetween(startOfDay, endOfDay);
        long bsKeyNumber = numberOfOrdersForOrderDateTime + 1;
        String bsKeyPrefix = "ORD";
        String bsKeyDate = order.getOrderTime().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
        StringBuilder bsKey = new StringBuilder();
        bsKey.append(String.valueOf(bsKeyNumber));
        while (bsKey.toString().length() != 5) {
            bsKey.insert(0, "0");
        }
        bsKey.insert(0, "-");
        bsKey.insert(0, bsKeyDate);
        bsKey.insert(0, bsKeyPrefix);
        order.setBsKey(bsKey.toString());
        return order;
    }
}
