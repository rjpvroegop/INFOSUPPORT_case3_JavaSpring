package com.infosupport.bsvoorraadbeheer.service.impl;

import com.infosupport.bsvoorraadbeheer.domain.StockItemMutation;
import com.infosupport.bsvoorraadbeheer.service.CsvService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * Created by rjpvr on 19-1-2017.
 */
@Service("csvService")
public class CsvServiceImpl implements CsvService {
    private static Logger LOGGER = Logger.getLogger(CsvService.class);
    public void initiate(){
        ScheduledExecutorService executor = Executors.newScheduledThreadPool(1);

        Runnable task = () -> {
            try {
                storeOldStockData();
            } catch (IOException e) {
                LOGGER.info(e);
            }
            createNewStockFile();
        };

        int initialDelay = 0;
        int period = 60;
        executor.scheduleAtFixedRate(task, initialDelay, period, TimeUnit.MINUTES);
    }

    @Override
    public void addMutations(Collection<StockItemMutation> mutations) throws IOException {
        Writer output;
        output = new BufferedWriter(new FileWriter("csv/stock.csv", true));
        for (StockItemMutation mutation : mutations) {

            StringBuilder sb = new StringBuilder();
            sb.append(mutation.getProductId());
            sb.append(",");
            sb.append(mutation.getMutationQuantity());
            sb.append(";");

            output.append(sb.toString());
        }
        output.close();
    }

    private static void storeOldStockData() throws IOException {
        System.out.println("backup");
        List<String> lines = Files.readAllLines(Paths.get("csv/stock.csv"));
        Path file = Paths.get("csv/stock" + System.currentTimeMillis() + ".csv");
        try {
            Files.write(file, lines, Charset.forName("UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void createNewStockFile(){
        List<String> lines = Arrays.asList("productId, stock;");
        Path file = Paths.get("csv/stock.csv");
        try {
            Files.write(file, lines, Charset.forName("UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
