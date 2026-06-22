package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminDashboardController {

    @GetMapping("/admin")
    public String adminDashboard(){

        return "admin_dashboard";
    }

    @GetMapping("/manageProducts")
    public String manageProducts(){

        return "manage-products";
    }

    @GetMapping("/manageOrders")
    public String manageOrders(){

        return "manage-order";
    }

    @GetMapping("/manageUsers")
    public String manageUsers(){

        return "manage-user";
    }
}