package com.infosupport.bsbestellingbeheer.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;
import com.infosupport.bsbestellingbeheer.util.CustomLocalDateTimeSerializer;
import com.infosupport.bsbestellingbeheer.util.OrderStateSerializer;
import lombok.*;
import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import java.time.LocalDateTime;
import java.util.List;

/**
 * Created by Sander on 16-1-17.
 */
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Document
public class Order {
    @Id
    private String id;

    @JsonSerialize(using = CustomLocalDateTimeSerializer.class)
    private LocalDateTime orderTime;

    @JsonSerialize(using = CustomLocalDateTimeSerializer.class)
    private LocalDateTime sendTime;

    @OneToOne
    private Address billingAddress;

    @OneToOne
    private Address shippingAddress;

    @OneToOne
    private Payment payment;

    @JsonSerialize(using = OrderStateSerializer.class)
    private OrderState orderState;

    @OneToMany
    private List<OrderItem> items;

    @ManyToOne
    private Customer customer;

    public void inTreatment() throws OrderStateException {
        orderState.inTreatment(this);
    }

    public void post() throws OrderStateException {
        orderState.post(this);
    }

    public void pack() throws OrderStateException {
        orderState.pack(this);
    }

    public void send() throws OrderStateException {
        orderState.send(this);
    }

    public void cancel() throws OrderStateException {
        orderState.cancel(this);
    }
}
