package com.project.service;

import java.util.List;
import com.project.entity.OrderEntity;

public interface OrderService {

    OrderEntity saveOrder(OrderEntity order);

    List<OrderEntity> getAllOrders();
}