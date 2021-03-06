package com.infosupport.bsbestellingbeheer;

import com.infosupport.bsbestellingbeheer.domain.*;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.context.annotation.Bean;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
@EnableDiscoveryClient
public class BsbestellingbeheerApplication {


    @Autowired
    private OrderRepository repository;

    public static void main(String[] args) {
        SpringApplication.run(BsbestellingbeheerApplication.class, args);

    }

    @Bean
    CommandLineRunner onStartUp(OrderRepository orderRepository) {
        return (String... args) -> {

            orderRepository.deleteAll();

            Product product1 = Product.builder()
                    .id(1L)
                    .name("HL Road Frame - Black, 58")
                    .supplierProductId("BK-T18Y-44")
                    .price(539.99)
                    .build();
            Product product2 = Product.builder()
                    .id(2L)
                    .name("HL Road Frame - Red, 58")
                    .supplierProductId("BK-T18Y-62")
                    .price(564.99)
                    .build();
            Product product3 = Product.builder()
                    .id(3L)
                    .name("Sport-100 Helmet, Red")
                    .supplierProductId("BK-R79Y-40")
                    .price(1700.99)
                    .build();
            Product product4 = Product.builder()
                    .id(4L)
                    .name("Sport-100 Helmet, Black")
                    .supplierProductId("BK-M38S-38")
                    .price(742.35)
                    .build();
            Product product5 = Product.builder()
                    .id(5L)
                    .name("Mountain Bike Socks, M")
                    .supplierProductId("BK-M18B-40")
                    .price(742.35)
                    .build();
            Product product6 = Product.builder()
                    .id(6L)
                    .name("Mountain Bike Socks, L")
                    .supplierProductId("BK-R19B-52")
                    .price(20.24)
                    .build();
            Product product7 = Product.builder()
                    .id(7L)
                    .name("Sport-100 Helmet, Blue")
                    .supplierProductId("BS-R19B-52")
                    .price(29.24)
                    .build();
            Product product8 = Product.builder()
                    .id(8L)
                    .name("AWC Logo Cap")
                    .supplierProductId("BS-R18B-29")
                    .price(35.24)
                    .build();
            Product product9 = Product.builder()
                    .id(9L)
                    .name("Long-Sleeve Logo Jersey, S")
                    .supplierProductId("BS-S18B-29")
                    .price(35.24)
                    .build();
            Product product10 = Product.builder()
                    .id(10L)
                    .name("Long-Sleeve Logo Jersey, M")
                    .supplierProductId("BS-R18B-50")
                    .price(50.59)
                    .build();
            Product product11 = Product.builder()
                    .id(11L)
                    .name("HL Road Frame - Red, 62")
                    .supplierProductId("BK-T18Y-44")
                    .price(539.99)
                    .build();
            Product product12 = Product.builder()
                    .id(12L)
                    .name("HL Road Frame - Red, 44")
                    .supplierProductId("BK-T18Y-62")
                    .price(564.99)
                    .build();
            Product product13 = Product.builder()
                    .id(13L)
                    .name("HL Road Frame - Red, 48")
                    .supplierProductId("BK-R79Y-40")
                    .price(1700.99)
                    .build();
            Product product14 = Product.builder()
                    .id(14L)
                    .name("LL Road Frame - Red, 44")
                    .supplierProductId("BK-M38S-38")
                    .price(742.35)
                    .build();
            Product product15 = Product.builder()
                    .id(15L)
                    .name("LL Road Frame - Red, 52")
                    .supplierProductId("BK-M18B-40")
                    .price(742.35)
                    .build();
            Product product16 = Product.builder()
                    .id(16L)
                    .name("LL Road Frame - Red, 60")
                    .supplierProductId("BK-R19B-52")
                    .price(20.24)
                    .build();
            Product product17 = Product.builder()
                    .id(17L)
                    .name("ML Road Frame - Red, 52")
                    .supplierProductId("BS-R19B-52")
                    .price(29.24)
                    .build();
            Product product18 = Product.builder()
                    .id(18L)
                    .name("HL Mountain Frame - Black, 48")
                    .supplierProductId("BS-R18B-29")
                    .price(35.24)
                    .build();
            Product product19 = Product.builder()
                    .id(19L)
                    .name("Road-150 Red, 48")
                    .supplierProductId("BS-S18B-29")
                    .price(35.24)
                    .build();
            Product product20 = Product.builder()
                    .id(20L)
                    .name("Road-450 Red, 58")
                    .supplierProductId("BS-R18B-50")
                    .price(50.59)
                    .build();

            Address address1 = Address.builder().city("Dordrecht").zip("1234 AB").street("Leerpark 50").build();
            Address address2 = Address.builder().city("Breda").zip("8612 PO").street("Leerpark 10").build();
            Address address3 = Address.builder().city("Teteringen").zip("2361 OP").street("Schijfstraat 2").build();
            Address address4 = Address.builder().city("Oosterhout").zip("4612 IO").street("Boeketveld 84").build();
            Address address5 = Address.builder().city("Dongen").zip("4852 UH").street("Hoolstraat 10").build();
            Address address6 = Address.builder().city("Tilburg").zip("8651 RM").street("Langelaar 36").build();
            Address address7 = Address.builder().city("Rotterdam").zip("2015 SR").street("Donkerstraat 80").build();
            Address address8 = Address.builder().city("Groningen").zip("7862 SA").street("Oosterhoutseweg 77").build();

            List<OrderItem> orderItemList1 = new ArrayList<>();
            orderItemList1.add(OrderItem.builder().product(product1).amount(1).build());
            orderItemList1.add(OrderItem.builder().product(product2).amount(7).build());
            orderItemList1.add(OrderItem.builder().product(product9).amount(2).build());
            List<OrderItem> orderItemList2 = new ArrayList<>();
            orderItemList2.add(OrderItem.builder().product(product3).amount(4).build());
            orderItemList2.add(OrderItem.builder().product(product4).amount(3).build());
            orderItemList2.add(OrderItem.builder().product(product5).amount(2).build());
            orderItemList2.add(OrderItem.builder().product(product6).amount(6).build());
            orderItemList2.add(OrderItem.builder().product(product7).amount(2).build());
            orderItemList2.add(OrderItem.builder().product(product8).amount(1).build());
            orderItemList2.add(OrderItem.builder().product(product10).amount(5).build());
            List<OrderItem> orderItemList3 = new ArrayList<>();
            orderItemList3.add(OrderItem.builder().product(product19).amount(1).build());
            List<OrderItem> orderItemList4 = new ArrayList<>();
            orderItemList4.add(OrderItem.builder().product(product17).amount(4).build());
            orderItemList4.add(OrderItem.builder().product(product14).amount(3).build());
            List<OrderItem> orderItemList5 = new ArrayList<>();
            orderItemList5.add(OrderItem.builder().product(product5).amount(1).build());
            List<OrderItem> orderItemList6 = new ArrayList<>();
            orderItemList6.add(OrderItem.builder().product(product6).amount(2).build());
            List<OrderItem> orderItemList7 = new ArrayList<>();
            orderItemList7.add(OrderItem.builder().product(product11).amount(1).build());
            List<OrderItem> orderItemList8 = new ArrayList<>();
            orderItemList8.add(OrderItem.builder().product(product8).amount(3).build());
            List<OrderItem> orderItemList9 = new ArrayList<>();
            orderItemList9.add(OrderItem.builder().product(product9).amount(1).build());
            List<OrderItem> orderItemList10 = new ArrayList<>();
            orderItemList10.add(OrderItem.builder().product(product10).amount(10).build());
            List<OrderItem> orderItemList11 = new ArrayList<>();
            orderItemList11.add(OrderItem.builder().product(product6).amount(8).build());
            List<OrderItem> orderItemList12 = new ArrayList<>();
            orderItemList12.add(OrderItem.builder().product(product12).amount(1).build());
            orderItemList12.add(OrderItem.builder().product(product13).amount(2).build());
            List<OrderItem> orderItemList13 = new ArrayList<>();
            orderItemList13.add(OrderItem.builder().product(product2).amount(2).build());
            List<OrderItem> orderItemList14 = new ArrayList<>();
            orderItemList14.add(OrderItem.builder().product(product15).amount(8).build());
            orderItemList14.add(OrderItem.builder().product(product1).amount(4).build());
            orderItemList14.add(OrderItem.builder().product(product2).amount(8).build());
            orderItemList14.add(OrderItem.builder().product(product4).amount(1).build());
            List<OrderItem> orderItemList15 = new ArrayList<>();
            orderItemList15.add(OrderItem.builder().product(product3).amount(2).build());
            List<OrderItem> orderItemList16 = new ArrayList<>();
            orderItemList16.add(OrderItem.builder().product(product16).amount(1).build());
            List<OrderItem> orderItemList17 = new ArrayList<>();
            orderItemList17.add(OrderItem.builder().product(product17).amount(1).build());
            List<OrderItem> orderItemList18 = new ArrayList<>();
            orderItemList18.add(OrderItem.builder().product(product18).amount(2).build());
            orderItemList18.add(OrderItem.builder().product(product8).amount(1).build());
            orderItemList18.add(OrderItem.builder().product(product16).amount(3).build());
            List<OrderItem> orderItemList19 = new ArrayList<>();
            orderItemList19.add(OrderItem.builder().product(product20).amount(1).build());
            List<OrderItem> orderItemList20 = new ArrayList<>();
            orderItemList20.add(OrderItem.builder().product(product18).amount(2).build());

            Payment payment1 = Payment.builder().paidDateTime(LocalDateTime.now().minusDays(30)).method("IDeal").build();
            Payment payment2 = Payment.builder().paidDateTime(LocalDateTime.now().minusDays(30)).method("Paypal").build();
            Payment payment3 = Payment.builder().method("Rembours").build();

            // save a couple of customers
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList1)
                    .payment(payment1)
                    .billingAddress(address1)
                    .shippingAddress(address2)
                    .build());

            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.PACKED)
                    .items(orderItemList2)
                    .shippingAddress(address3)
                    .billingAddress(address3)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList3)
                    .shippingAddress(address4)
                    .billingAddress(address4)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList4)
                    .shippingAddress(address6)
                    .billingAddress(address5)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.PACKED)
                    .items(orderItemList5)
                    .shippingAddress(address1)
                    .billingAddress(address2)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList6)
                    .shippingAddress(address4)
                    .billingAddress(address4)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList7)
                    .shippingAddress(address1)
                    .billingAddress(address3)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList8)
                    .shippingAddress(address3)
                    .billingAddress(address1)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList9)
                    .shippingAddress(address2)
                    .billingAddress(address1)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList10)
                    .shippingAddress(address7)
                    .billingAddress(address8)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.PACKED)
                    .items(orderItemList11)
                    .shippingAddress(address1)
                    .billingAddress(address1)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList12)
                    .shippingAddress(address2)
                    .billingAddress(address2)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList13)
                    .shippingAddress(address8)
                    .billingAddress(address8)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.PACKED)
                    .items(orderItemList14)
                    .shippingAddress(address6)
                    .billingAddress(address6)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList15)
                    .shippingAddress(address1)
                    .billingAddress(address4)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList16)
                    .shippingAddress(address1)
                    .billingAddress(address4)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList17)
                    .shippingAddress(address6)
                    .billingAddress(address8)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.PACKED)
                    .items(orderItemList18)
                    .shippingAddress(address4)
                    .billingAddress(address8)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.POSTED)
                    .items(orderItemList19)
                    .shippingAddress(address1)
                    .billingAddress(address2)
                    .build());
            orderRepository.save(Order.builder()
                    .orderTime(LocalDateTime.now())
                    .orderState(OrderState.FINISHED)
                    .items(orderItemList20)
                    .shippingAddress(address3)
                    .billingAddress(address4)
                    .build());

            // fetch all customers
            System.out.println("Orders found with findAll():");
            System.out.println("-------------------------------");
            for (Order order : orderRepository.findAll()) {
                System.out.println(order.getId());
            }
            System.out.println();
        };
    }
}
