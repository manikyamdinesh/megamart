package com.project.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.project.entity.OrderEntity;
import com.project.service.OrderService;

@RestController
@RequestMapping("/api/orders")
public class OrderRestController {

    @Autowired
    private OrderService orderService;

    @GetMapping
    public List<OrderEntity> getOrders(){

        return orderService.getAllOrders();
    }
}