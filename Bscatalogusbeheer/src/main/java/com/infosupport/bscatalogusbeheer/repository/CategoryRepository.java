package com.infosupport.bscatalogusbeheer.repository;

import com.infosupport.bscatalogusbeheer.domain.Category;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Sander on 9-1-17.
 */
public interface CategoryRepository extends JpaRepository<Category, Long> {
    Category findByName(String name);
}
