package com.infosupport.bsvoorraadbeheer.csv;

import com.infosupport.bsvoorraadbeheer.domain.StockItem;
import com.infosupport.bsvoorraadbeheer.repository.StockRepository;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Timer;
import java.util.TimerTask;

import static com.sun.xml.internal.ws.spi.db.BindingContextFactory.LOGGER;

/**
 * Created by rjpvr on 17-1-2017.
 */
public class CsvStock {
    // singleton
    private static CsvStock instance = new CsvStock();
    private static Timer refreshTimer = new Timer();
    private StockRepository repository;
    private TimerTask csvTask;

    private CsvStock() {
    }

    public static CsvStock getInstance() {
        return instance;
    }

    public void refreshCsv(Collection<StockItem> stockItems) {
        try {
            PrintWriter writer = new PrintWriter("stock.csv", "UTF-8");

            stockItems.forEach(item ->
                    LOGGER.info(stockItemToCsvString(item))
            );

            writer.close();
        } catch (IOException e) {
            LOGGER.info(e.getMessage());
            System.out.println("Could not write file");
            e.printStackTrace();
        }
    }

    public File toCsv() {
        return new File("stock.csv");
    }

    public void setRepository(StockRepository repository) {
        this.repository = repository;
    }

    public void setRefreshInterval(int minutes) {
        if (csvTask != null)
            csvTask.cancel();

        csvTask = new TimerTask() {
            @Override
            public void run() {
                CsvStock.getInstance().refreshCsv(repository.findAll());
            }
        };
        refreshTimer.schedule(csvTask, 0L, 1000 * 60 * minutes);
    }

    private String stockItemToCsvString(StockItem si) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(si.getProductId());
        stringBuilder.append(",");
        stringBuilder.append(si.getStock());
        stringBuilder.append(";");
        return stringBuilder.toString();
    }
}
