package com.infosupport.domain;

import lombok.*;

import javax.persistence.*;

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

    @ManyToOne
    Brand brand;

    @ManyToOne
    Supplier supplier;

    @Enumerated(EnumType.STRING)
    Category category;
}
