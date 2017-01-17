package com.infosupport.bsvoorraadbeheer.csv;

import com.infosupport.bsvoorraadbeheer.domain.StockItem;

import java.util.Collection;
import java.util.Timer;
import java.util.TimerTask;

/**
 * Created by rjpvr on 17-1-2017.
 */
public class CsvStock {
    private static String items;
    private static CsvStock instance = new CsvStock();

    private CsvStock(){
    }

    public static CsvStock getInstance(){
        return instance;
    }

    public static void refreshCsv(Collection<StockItem> stockItems){
        items = "";

        for (StockItem stockItem : stockItems) {
            items += stockItem.getProductId() + "," + stockItem.getStock() + ";";
        }

        System.out.println("Refreshed CSV");
    }

    public static String toCsv() {
        return items;
    }
}
