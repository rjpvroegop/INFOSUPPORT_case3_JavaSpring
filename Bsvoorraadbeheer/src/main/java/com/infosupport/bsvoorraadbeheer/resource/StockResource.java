package com.infosupport.bsvoorraadbeheer.resource;

import com.infosupport.bsvoorraadbeheer.domain.StockItem;
import com.infosupport.bsvoorraadbeheer.domain.StockItemMutation;
import com.infosupport.bsvoorraadbeheer.service.CsvService;
import com.infosupport.bsvoorraadbeheer.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Collection;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.PUT;

/**
 * Created by rjpvr on 17-1-2017.
 */

@CrossOrigin
@RestController
@RequestMapping("stock")
public class StockResource {

    private StockService stockService;
    private CsvService csvService;

    @Autowired
    public StockResource(StockService stockService, CsvService csvService) {
        this.stockService = stockService;
        this.csvService = csvService;

        this.csvService.initiate();
    }


    @RequestMapping(value = "/{productId}", method = GET)
    public StockItem getStock(@PathVariable("productId") Long productId) {
        return stockService.getStock(productId);
    }

    @RequestMapping
    public Collection<StockItem> getAllStock() {
        return stockService.getAllStock();
    }

    @RequestMapping(method = PUT)
    public void mutateStock(@RequestBody Collection<StockItemMutation> mutations) throws IOException {
        csvService.addMutations(mutations);
        stockService.mutate(mutations);
    }
}
