package com.infosupport.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.Type;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;
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
    Long id;
    String name;
    String description;

    @Column(length=1000000)
    String image;
    @Column(columnDefinition="tinyint(1) default 0")
    boolean deleted = false;
    Double price;

    @Column(columnDefinition="date")
    @Type(type = "com.infosupport.util.LocalDateHibernateUserType")
    private LocalDate availableFrom;

    @Column(columnDefinition="date")
    @Type(type = "com.infosupport.util.LocalDateHibernateUserType")
    private LocalDate availableUntil;

    String supplierProductId;

    @ManyToOne
    Supplier supplier;

    @ManyToMany
    List<Category> categoryList;

}
