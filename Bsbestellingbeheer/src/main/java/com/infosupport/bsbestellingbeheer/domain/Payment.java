package com.infosupport.bsbestellingbeheer.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.infosupport.bsbestellingbeheer.util.CustomLocalDateTimeSerializer;
import lombok.*;

import java.time.LocalDateTime;

/**
 * Created by Sander on 17-1-17.
 */
@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Payment {
    private String method;
    @JsonSerialize(using = CustomLocalDateTimeSerializer.class)
    private LocalDateTime paidDateTime;
}
