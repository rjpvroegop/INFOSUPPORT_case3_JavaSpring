package com.infosupport.bsbestellingbeheer.builders;

import com.infosupport.bsbestellingbeheer.domain.*;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Sander on 18-1-17.
 */
public class OrderBuilder {
    public static Order.OrderBuilder orderBuilder() {
        Product product1 = Product.builder()
                .id(1L)
                .bsKey("PRD00001")
                .name("product1")
                .supplierProductId("BK-T18Y-44")
                .price(539.99)
                .build();
        Product product2 = Product.builder()
                .id(2L)
                .bsKey("PRD00002")
                .name("product2")
                .supplierProductId("BK-T18Y-62")
                .price(564.99)
                .build();
        Product product3 = Product.builder()
                .id(9L)
                .bsKey("PRD00009")
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

        Customer customer = Customer.builder()
                .id(2L)
                .bsKey("CUST000002")
                .firstName("Kenzo")
                .lastName("Dominicus")
                .email("KD@gmail.com")
                .birthDate("1993-05-18")
                .phone("0671495864").build();


        return Order.builder()
                .orderTime(LocalDateTime.now())
                .sendTime(LocalDateTime.now().minusHours(60))
                .items(orderItemList1)
                .payment(payment)
                .customer(customer)
                .billingAddress(address1)
                .shippingAddress(address2);
    }
}
