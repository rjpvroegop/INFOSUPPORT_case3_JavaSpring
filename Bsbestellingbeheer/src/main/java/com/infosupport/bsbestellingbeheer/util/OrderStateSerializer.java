package com.infosupport.bsbestellingbeheer.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.infosupport.bsbestellingbeheer.domain.orderState.OrderState;

import java.io.IOException;

/**
 * Created by Sander on 17-1-17.
 */
public class OrderStateSerializer extends JsonSerializer<OrderState> {

    @Override
    public void serialize(OrderState state, JsonGenerator generator, SerializerProvider sp)
            throws IOException, JsonProcessingException {
        generator.writeString(state.toString());
    }
}
