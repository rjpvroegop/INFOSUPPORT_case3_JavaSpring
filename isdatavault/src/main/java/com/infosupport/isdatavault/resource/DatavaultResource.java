package com.infosupport.isdatavault.resource;

import com.infosupport.isdatavault.domain.DatavaultData;
import com.infosupport.isdatavault.service.DatavaultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

/**
 * Created by Kenzo Dominicus on 23-1-2017.
 */
@CrossOrigin
@RestController
@RequestMapping("datavault")
public class DatavaultResource {


    private DatavaultService datavaultService;

    @Autowired
    public DatavaultResource(DatavaultService datavaultService) {
        this.datavaultService = datavaultService;
    }


    @RequestMapping(value = "/{interval}", method = GET)
    public DatavaultData getDatavaultDataInterval(@PathVariable long interval) {
        String url = "http://bsbestellingenbeheer/orders/datavaultdata/" + String.valueOf(interval);
        System.out.println(url);
        ResponseEntity<DatavaultData> responseEntity = restTemplate().getForEntity(url, DatavaultData.class);
        DatavaultData datavaultData = responseEntity.getBody();
        return datavaultData;
    }

    @LoadBalanced
    @Bean
    private RestTemplate restTemplate() {
        return new RestTemplate();
    }
}
