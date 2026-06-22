package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.project.entity.OrderEntity;

public interface OrderRepository
        extends JpaRepository<OrderEntity, Long> {

}