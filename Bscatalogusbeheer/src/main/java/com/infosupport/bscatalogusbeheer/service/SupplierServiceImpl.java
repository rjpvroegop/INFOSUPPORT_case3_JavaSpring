package com.infosupport.bscatalogusbeheer.service;

import com.infosupport.bscatalogusbeheer.domain.Supplier;
import com.infosupport.bscatalogusbeheer.repository.SupplierRepository;
import com.infosupport.bscatalogusbeheer.service.SupplierService;
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
