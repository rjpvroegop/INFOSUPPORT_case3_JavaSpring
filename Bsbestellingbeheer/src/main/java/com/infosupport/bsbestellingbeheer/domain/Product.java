package com.infosupport.bsbestellingbeheer.domain;

import lombok.*;

/**
 * Created by Sander on 16-1-17.
 */
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    private Long id;
    private String name;
    private String supplierProductId;
    private Double price;

}

