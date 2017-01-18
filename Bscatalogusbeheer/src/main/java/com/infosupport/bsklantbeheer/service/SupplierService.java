package com.infosupport.bsklantbeheer.service;

import com.infosupport.bsklantbeheer.domain.Supplier;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */
public interface SupplierService {
    List<Supplier> findAllSuppliers();
}
