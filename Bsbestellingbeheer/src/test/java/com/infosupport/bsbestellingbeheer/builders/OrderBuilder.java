package com.infosupport.bsbestellingbeheer.builders;

import com.infosupport.bsbestellingbeheer.domain.*;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Sander on 18-1-17.
 */
public class OrderBuilder {
    public static Order.OrderBuilder orderBuilder(){
        Product product1 = Product.builder()
                .id(1L)
                .name("product1")
                .supplierProductId("BK-T18Y-44")
                .price(539.99)
                .build();
        Product product2 = Product.builder()
                .id(2L)
                .name("product2")
                .supplierProductId("BK-T18Y-62")
                .price(564.99)
                .build();
        Product product3 = Product.builder()
                .id(9L)
                .name("product9")
                .supplierProductId("BS-S18B-29")
                .price(35.24)
                .build();

        Address address1 = Address.builder().city("Dordrecht").zip("1234 AB").street("Leerpark 50").build();
        Address address2 = Address.builder().city("Breda").zip("1234 AB").street("Leerpark 50").build();

        List<OrderItem> orderItemList1 = new ArrayList<>();
        orderItemList1.add(OrderItem.builder().product(product1).amount(1).build());
        orderItemList1.add(OrderItem.builder().product(product2).amount(7).build());
        orderItemList1.add(OrderItem.builder().product(product3).amount(2).build());

        Payment payment = Payment.builder().paidDateTime(LocalDateTime.now().minusDays(30)).method("IDeal").build();


        return Order.builder()
                .orderTime(LocalDateTime.now())
                .sendTime(LocalDateTime.now().minusHours(60))
                .items(orderItemList1)
                .payment(payment)
                .billingAddress(address1)
                .shippingAddress(address2);
    }
}
