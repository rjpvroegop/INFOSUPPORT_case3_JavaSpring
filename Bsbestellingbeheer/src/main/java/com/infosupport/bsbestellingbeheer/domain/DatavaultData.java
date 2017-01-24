package com.infosupport.bsbestellingbeheer.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Collection;

/**
 * Created by Kenzo Dominicus on 23-1-2017.
 */
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class DatavaultData {
    private String bsKeyOrder, bsKeyCustomer;
    private Collection<String> bsKeysProducts;
}
