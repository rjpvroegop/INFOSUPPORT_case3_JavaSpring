package com.infosupport.bsbestellingbeheer.repository;

import com.infosupport.bsbestellingbeheer.domain.Order;
import com.infosupport.bsbestellingbeheer.domain.OrderState;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * Created by Sander on 16-1-17.
 */
public interface OrderRepository extends MongoRepository<Order, String> {
    List<Order> findByOrderState(OrderState orderState);
}
