package com.infosupport.bsbestellingbeheer.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by Sander on 9-1-17.
 */
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Customer {
    private Long id;
    private String bsKey;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String birthDate;
}
