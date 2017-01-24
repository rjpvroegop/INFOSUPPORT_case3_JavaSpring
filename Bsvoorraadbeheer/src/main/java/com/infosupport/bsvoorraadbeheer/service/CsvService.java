package com.infosupport.bsvoorraadbeheer.service;

import com.infosupport.bsvoorraadbeheer.domain.StockItemMutation;

import java.io.IOException;
import java.util.Collection;

/**
 * Created by rjpvr on 19-1-2017.
 */
public interface CsvService {
    void initiate();
    void addMutations(Collection<StockItemMutation> mutations) throws IOException;
}
