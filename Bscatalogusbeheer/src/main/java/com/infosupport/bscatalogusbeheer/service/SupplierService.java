package com.infosupport.bscatalogusbeheer.service;

import com.infosupport.bscatalogusbeheer.domain.Supplier;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */
public interface SupplierService {
    List<Supplier> findAllSuppliers();
}
