package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.service.OrderService;

@Controller
public class ManageOrderController {

    @Autowired
    private OrderService orderService;

    @GetMapping("/manageOrders")
    public String manageOrders(Model model){

        model.addAttribute(
                "orders",
                orderService.getAllOrders());

        return "manage-order";
    }
}