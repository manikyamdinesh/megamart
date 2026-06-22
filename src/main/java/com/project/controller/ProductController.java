package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.project.entity.ProductEntity;
import com.project.service.ProductService;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

    // Show all products
    @GetMapping("/products")
    public String viewProducts(Model model){

        model.addAttribute(
                "products",
                productService.getAllProducts());

        return "products";
    }

    // Show single product details
    @GetMapping("/product/{id}")
    public String productDetails(
            @PathVariable Long id,
            Model model){

        ProductEntity product =
                productService.getProductById(id);

        model.addAttribute("product", product);

        return "product_detail";
    }
}