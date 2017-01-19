package com.infosupport.bsvoorraadbeheer.repository;

import com.infosupport.bsvoorraadbeheer.domain.StockItem;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by rjpvr on 17-1-2017.
 */
public interface StockRepository extends JpaRepository<StockItem, Long> {
}

