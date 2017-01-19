package com.infosupport.bsvoorraadbeheer.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * Created by rjpvr on 17-1-2017.
 */

@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class StockItem {
    @Id
    private Long productId;
    private Long stock;
}
