package com.infosupport.bsklantbeheer.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * Created by maart on 10-1-2017.
 */
@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class WebshopAccount {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String userName;
    private String password;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private Customer customer;

}
