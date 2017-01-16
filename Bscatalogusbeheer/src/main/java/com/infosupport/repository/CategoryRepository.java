package com.infosupport.repository;

import com.infosupport.domain.Category;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Sander on 9-1-17.
 */
public interface CategoryRepository extends JpaRepository<Category, Long> {

}
