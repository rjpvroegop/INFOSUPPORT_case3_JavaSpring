package com.infosupport.bsvoorraadbeheer.service;

import com.infosupport.bsvoorraadbeheer.domain.StockItem;

import java.util.Collection;

/**
 * Created by rjpvr on 17-1-2017.
 */
public interface StockService {

    StockItem getStock(Long productId);
    Collection<StockItem> getAllStock();

}
