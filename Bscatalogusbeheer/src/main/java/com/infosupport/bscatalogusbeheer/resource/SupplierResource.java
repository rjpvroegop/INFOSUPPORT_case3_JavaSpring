package com.infosupport.bscatalogusbeheer.resource;

import com.infosupport.bscatalogusbeheer.domain.Supplier;
import com.infosupport.bscatalogusbeheer.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

/**
 * Created by Sander on 9-1-17.
 */
@CrossOrigin
@RestController
@RequestMapping("/suppliers")
public class SupplierResource {

    @Autowired
    private SupplierService supplierService;

    @RequestMapping()
    public Collection<Supplier> getSuppliers() {
        return supplierService.findAllSuppliers();
    }
}
