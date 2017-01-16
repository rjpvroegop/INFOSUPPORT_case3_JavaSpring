package com.infosupport.service.impl;

import com.infosupport.domain.Supplier;
import com.infosupport.repository.SupplierRepository;
import com.infosupport.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Sander on 9-1-17.
 */

@Service("supplierService")
@Repository
public class SupplierServiceImpl implements SupplierService {

    @Autowired
    private SupplierRepository supplierRepository;

    @Override
    public List<Supplier> findAllSuppliers() {
        return supplierRepository.findAll();
    }
}
