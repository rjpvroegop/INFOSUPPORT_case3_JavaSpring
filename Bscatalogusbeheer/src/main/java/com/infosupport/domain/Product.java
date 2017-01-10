package com.infosupport.domain;

import lombok.*;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Sander on 9-1-17.
 */
@Builder
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;
    String name;
    String description;
    byte[] image;
    boolean deleted = false;
    Date availableFrom;
    Date availableUntil;

    @ManyToOne
    Brand brand;

    @ManyToOne
    Supplier supplier;

    @Enumerated(EnumType.STRING)
    Category category;


}
