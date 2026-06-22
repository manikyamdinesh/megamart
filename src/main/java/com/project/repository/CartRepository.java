package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.project.entity.CartEntity;

public interface CartRepository
        extends JpaRepository<CartEntity, Long> {

}