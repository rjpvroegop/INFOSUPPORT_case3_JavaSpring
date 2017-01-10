package com.infosupport.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
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
    private LocalDate availableFrom;

    LocalDate availableUntil;

    @ManyToOne
    Brand brand;

    @ManyToOne
    Supplier supplier;

    @Enumerated(EnumType.STRING)
    Category category;


}
