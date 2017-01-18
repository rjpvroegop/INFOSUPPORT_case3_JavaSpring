package com.infosupport.bsvoorraadbeheer.service.impl;

import com.infosupport.bsvoorraadbeheer.csv.CsvStock;
import com.infosupport.bsvoorraadbeheer.domain.StockItem;
import com.infosupport.bsvoorraadbeheer.repository.StockRepository;
import com.infosupport.bsvoorraadbeheer.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

/**
 * Created by rjpvr on 17-1-2017.
 */
@Service("stockService")
@Repository
public class StockServiceImpl implements StockService {

    private StockRepository stockRepository;

    @Autowired
    public StockServiceImpl(StockRepository stockRepository) {
        this.stockRepository = stockRepository;
        refreshStock();
    }

    @Override
    public StockItem getStock(Long productId) {
        StockItem stockItem = stockRepository.findOne(productId);

        Random r = new Random();

        if (stockItem == null) {
            // todo: random stock if product is new -- test data only for PO demo purposes
            stockItem = StockItem.builder().productId(productId).stock((long) r.nextInt(5)).build();

            // todo: set stock to 0 if product is new
            // stockItem = StockItem.builder().productId(productId).stock(0L).build();

            stockRepository.save(stockItem);
        }

        return stockItem;
    }

    @Override
    public Collection<StockItem> getAllStock() {
        return stockRepository.findAll();
    }

    private void refreshStock() {

        Timer timer = new Timer();
        TimerTask fiveMinTask = new TimerTask() {
            @Override
            public void run() {
                CsvStock.refreshCsv(stockRepository.findAll());
            }
        };
        timer.schedule(fiveMinTask, 0L, 1000 * 20);
    }
}
