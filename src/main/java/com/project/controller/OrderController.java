package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.service.OrderService;

@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @GetMapping("/order-history")
    public String orderHistory(Model model){

        model.addAttribute(
                "orders",
                orderService.getAllOrders());

        return "order_history";
    }
}