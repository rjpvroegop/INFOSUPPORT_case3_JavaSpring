package com.infosupport.bsbestellingbeheer.resource;

import com.infosupport.bsbestellingbeheer.domain.DatavaultData;
import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderStateException;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
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

}
