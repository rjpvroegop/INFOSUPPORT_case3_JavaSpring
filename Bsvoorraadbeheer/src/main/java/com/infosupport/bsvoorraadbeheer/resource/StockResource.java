package com.infosupport.bsvoorraadbeheer.resource;

import com.infosupport.bsvoorraadbeheer.csv.CsvStock;
import com.infosupport.bsvoorraadbeheer.domain.StockItem;
import com.infosupport.bsvoorraadbeheer.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.util.Collection;

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
    public FileSystemResource getCsv(HttpServletResponse response) {
        response.setContentType("application/csv");
        response.setHeader("Content-Disposition", "attachment; filename=stock.csv");
        return new FileSystemResource(CsvStock.toCsv());
    }


}
