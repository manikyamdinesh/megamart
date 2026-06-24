package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.service.ProductService;

@Controller
public class AdminDashboardController {

    @Autowired
    private ProductService productService;

    @GetMapping("/admin")
    public String adminDashboard(){
        return "admin_dashboard";
    }

    @GetMapping("/admin/products")
    public String manageProducts(Model model){

        model.addAttribute(
                "products",
                productService.getAllProducts());

        return "manage-products";
    }
}