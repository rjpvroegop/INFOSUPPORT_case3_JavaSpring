package com.infosupport.bsklantbeheer.domain;

import lombok.*;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

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
    private Long id;
    private String name;
    private String description;

    @Column(length = 1000000)
    private String image;
    @Column(columnDefinition = "tinyint(1) default 0")
    boolean deleted = false;
    private Double price;

    @Column(columnDefinition = "date")
    @Type(type = "com.infosupport.util.LocalDateHibernateUserType")
    private LocalDate availableFrom;

    @Column(columnDefinition = "date")
    @Type(type = "com.infosupport.util.LocalDateHibernateUserType")
    private LocalDate availableUntil;

    private String supplierProductId;

    @ManyToOne
    private Supplier supplier;

    @ManyToMany
    private List<Category> categoryList;

}
