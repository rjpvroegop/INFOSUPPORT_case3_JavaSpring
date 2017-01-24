package com.infosupport.bsbestellingbeheer.resource;

import com.infosupport.bsbestellingbeheer.domain.Address;
import com.infosupport.bsbestellingbeheer.domain.DatavaultData;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderStateException;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.HttpMediaTypeNotAcceptableException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.ValidationException;
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

    @RequestMapping(method=GET)
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
    public Order getOrder(@PathVariable("id") String id) {
        return orderService.getOrder(id);
    }

    @RequestMapping(value = "/pack/{id}", method = POST)
    public Order packOrder(@PathVariable("id") String id) throws Exception {
        try {
            return orderService.packOrder(id);
        } catch (OrderStateException e) {
            throw new HttpRequestMethodNotSupportedException(e.getMessage());
        } catch (Exception e) {
            throw new HttpMessageNotReadableException(e.getMessage());
        }
    }

    @RequestMapping(value = "/sent/{id}", method = POST)
    public Order sendOrder(@PathVariable("id") String id) throws Exception {
        try {
            return orderService.sendOrder(id);
        } catch (OrderStateException e) {
            throw new Exception(e.getMessage());
        } catch (Exception e) {
            throw new HttpMessageNotReadableException(e.getMessage());
        }
    }

    @RequestMapping(value = "/datavaultdata/{interval}", method = GET)
    public Collection<DatavaultData> getDatavaultDataInterval(@PathVariable("interval") long interval) throws Exception{
        try {
            Collection<DatavaultData> datavaultDataCollection = orderService.getDatavaultDataInterval(interval);
            return datavaultDataCollection;
        } catch (Exception e) {
            throw new HttpMessageNotReadableException(e.getMessage());
        }
    }

    @RequestMapping(method=POST)
    public ResponseEntity<Order> placeOrder(@RequestBody Order order, HttpServletRequest request) throws HttpMediaTypeNotAcceptableException {
        try {
            order.setOrderState(OrderState.POSTED);
            order = orderService.saveOrder(order);
            return new ResponseEntity<>(order, HttpStatus.CREATED);
        } catch (NullPointerException e) {
            throw new HttpMediaTypeNotAcceptableException(e.getMessage());
        }
    }


}
