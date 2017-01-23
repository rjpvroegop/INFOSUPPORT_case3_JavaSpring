package com.infosupport.bsbestellingbeheer.repository;

import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.time.LocalDateTime;
import java.util.List;

/**
 * Created by Sander on 16-1-17.
 */
public interface OrderRepository extends MongoRepository<Order, String> {
    List<Order> findByOrderState(OrderState orderState);
    long countByOrderTime(LocalDateTime orderTime);
    List<Order> findByOrderTimeBetween(LocalDateTime from, LocalDateTime to);
    long countByOrderTimeBetween(LocalDateTime from, LocalDateTime to);
}
