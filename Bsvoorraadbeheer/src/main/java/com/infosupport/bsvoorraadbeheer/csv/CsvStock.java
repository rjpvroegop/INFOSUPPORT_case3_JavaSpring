package com.infosupport.bsvoorraadbeheer.csv;

import com.infosupport.bsvoorraadbeheer.domain.StockItem;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.Timer;
import java.util.TimerTask;
import java.util.stream.Stream;

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

        try{
            PrintWriter writer = new PrintWriter("stock.csv", "UTF-8");
            writer.println(items);
            writer.close();
        } catch (IOException e) {
            System.out.println("Could not write file");
            e.printStackTrace();
        }

        System.out.println("Refreshed CSV");
    }

    public static void addToItem(String item){
        items += item;
    }

    public static File toCsv() {
        return new File("stock.csv");
    }
}
