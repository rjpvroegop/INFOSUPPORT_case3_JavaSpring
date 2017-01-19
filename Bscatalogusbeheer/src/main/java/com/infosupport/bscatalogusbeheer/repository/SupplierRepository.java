package com.infosupport.bscatalogusbeheer.repository;

import com.infosupport.bscatalogusbeheer.domain.Supplier;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Sander on 9-1-17.
 */
public interface SupplierRepository extends JpaRepository<Supplier, Long> {

}
