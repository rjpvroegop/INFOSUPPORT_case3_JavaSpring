package com.infosupport.service;

import com.infosupport.domain.Supplier;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */
public interface SupplierService {
    List<Supplier> findAllSuppliers();
}
