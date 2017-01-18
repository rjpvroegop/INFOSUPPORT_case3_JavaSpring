package com.infosupport.bsbestellingbeheer.resource;

import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

/**
 * Created by Sander on 16-1-17.
 */
@CrossOrigin
@RestController
@RequestMapping("orders")
public class OrderResource {

    @Autowired
    private OrderService orderService;

    @RequestMapping
    public Collection<Order> getAllOrders() {
        return orderService.getAllOrders();
    }

    @RequestMapping("/posted")
    public Collection<Order> getAllPostedOrders() {
        return orderService.getAllPostedOrders(OrderState.POSTED);
    }

    @RequestMapping("/packed")
    public Collection<Order> getAllPackedOrders() {
        return orderService.getAllPostedOrders(OrderState.PACKED);
    }

    @RequestMapping(value = "/{id}", method = GET)
    public Order getOder(@PathVariable("id") String id) {
        return orderService.getOrder(id);
    }

    @RequestMapping(value = "/pack/{id}", method = POST)
    public Order packOder(@PathVariable("id") String id) throws Exception {
        return orderService.packOrder(id);
    }

    @RequestMapping(value = "/send/{id}", method = POST)
    public Order sendOder(@PathVariable("id") String id) throws Exception {
        return orderService.sendOrder(id);
    }

}
