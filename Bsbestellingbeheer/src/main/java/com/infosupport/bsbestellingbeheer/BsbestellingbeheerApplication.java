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
					.id(3L)
					.name("product3")
					.supplierProductId("BK-R79Y-40")
					.price(1700.99)
					.build();
			Product product4 = Product.builder()
					.id(4L)
					.name("product4")
					.supplierProductId("BK-M38S-38")
					.price(742.35)
					.build();
			Product product5 = Product.builder()
					.id(1L)
					.name("product5")
					.supplierProductId("BK-M18B-40")
					.price(742.35)
					.build();
			Product product6 = Product.builder()
					.id(5L)
					.name("product6")
					.supplierProductId("BK-R19B-52")
					.price(20.24)
					.build();


			Address address1 = Address.builder().city("Dordrecht").zip("1234 AB").street("Leerpark 50").build();
			Address address2 = Address.builder().city("Breda").zip("1234 AB").street("Leerpark 50").build();
			Address address3 = Address.builder().city("Teteringen").zip("4847 SM").street("Teteringen 26B").build();

			List<OrderItem> orderItemList1 = new ArrayList<>();
			orderItemList1.add(OrderItem.builder().product(product1).amount(1).build());
			orderItemList1.add(OrderItem.builder().product(product2).amount(7).build());
			List<OrderItem> orderItemList2 = new ArrayList<>();
			orderItemList2.add(OrderItem.builder().product(product3).amount(4).build());
			orderItemList2.add(OrderItem.builder().product(product4).amount(3).build());
			orderItemList2.add(OrderItem.builder().product(product5).amount(2).build());
			orderItemList2.add(OrderItem.builder().product(product6).amount(6).build());
			Payment payment = Payment.builder().paidDateTime(LocalDateTime.now().minusDays(30)).method("IDeal").build();

			// save a couple of customers
			orderRepository.save(Order.builder()
					.orderTime(LocalDateTime.now())
					.sendTime(LocalDateTime.now().minusHours(60))
					.orderState(OrderState.POSTED)
					.items(orderItemList1)
					.payment(payment)
					.billingAddress(address1)
					.shippingAddress(address2)
					.build());

			orderRepository.save(Order.builder()
					.orderTime(LocalDateTime.now())
					.sendTime(LocalDateTime.now().plusMinutes(60))
					.orderState(OrderState.PACKED)
					.items(orderItemList2)
					.shippingAddress(address3)
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
