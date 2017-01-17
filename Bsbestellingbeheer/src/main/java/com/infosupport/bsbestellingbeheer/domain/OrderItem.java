package com.infosupport.bsbestellingbeheer.domain;

import lombok.*;

import javax.persistence.*;

/**
 * Created by Sander on 16-1-17.
 */
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class OrderItem {
    private Integer amount;
    @OneToOne
    private Product product;

}
