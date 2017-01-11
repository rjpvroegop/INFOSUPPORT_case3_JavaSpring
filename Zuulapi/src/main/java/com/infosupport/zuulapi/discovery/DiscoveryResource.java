package com.infosupport.zuulapi.discovery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Kenzo Dominicus on 10-1-2017.
 */
@RestController
class DiscoveryResource {

    @Autowired
    private DiscoveryClient discoveryClient;

    @CrossOrigin
    @RequestMapping("/service-instances")
    public List<String> serviceInstances() {
        return this.discoveryClient.getServices();
    }

    @CrossOrigin
    @RequestMapping("/service-instances/{applicationName}")
    public List<ServiceInstance> serviceInstancesByApplicationName(
            @PathVariable String applicationName) {
        return this.discoveryClient.getInstances(applicationName);
    }
}