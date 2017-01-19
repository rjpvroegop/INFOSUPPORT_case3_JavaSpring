package com.infosupport.bsbestellingbeheer.domain;

import lombok.*;

/**
 * Created by maart on 9-1-2017.
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Address {
    private String street;
    private String zip;
    private String city;
}
