package com.infosupport.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private double credit;
    private String birthDate;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "customer_id")
    private Collection<Address> addresses;

    @OneToOne(fetch = FetchType.LAZY)
    private WebshopAccount webshopAccount;

    @JsonIgnore
    public WebshopAccount getWebshopAccount() {
        return this.webshopAccount;
    }
}
