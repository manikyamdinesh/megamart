package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.project.entity.CheckoutEntity;

public interface CheckoutRepository
        extends JpaRepository<CheckoutEntity, Long> {

}