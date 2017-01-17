package com.infosupport.bsvoorraadbeheer.resource;

import com.github.opendevl.JFlat;
import com.google.gson.Gson;
import com.infosupport.bsvoorraadbeheer.csv.CsvStock;
import com.infosupport.bsvoorraadbeheer.domain.StockItem;
import com.infosupport.bsvoorraadbeheer.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.Timer;
import java.util.TimerTask;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by rjpvr on 17-1-2017.
 */

@CrossOrigin
@RestController
@RequestMapping("stock")
public class StockResource {

    private StockService stockService;

    @Autowired
    public StockResource(StockService stockService) {
        this.stockService = stockService;
    }


    @RequestMapping(value = "/{productId}", method = GET)
    public StockItem getStock(@PathVariable("productId") Long productId) {
        return stockService.getStock(productId);
    }

    @RequestMapping
    public Collection<StockItem> getAllStock() {
        return stockService.getAllStock();
    }

    @RequestMapping(value = "/csv", method = GET)
    public String getCsv() {
        return CsvStock.toCsv();
    }


}
