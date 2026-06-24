package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.project.entity.CartEntity;
import com.project.entity.ProductEntity;
import com.project.service.CartService;
import com.project.service.ProductService;

@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private ProductService productService;

    @PostMapping("/add-cart")
    public String addToCart(
            @RequestParam Long productId) {

        ProductEntity product =
                productService.getProductById(productId);

        CartEntity cart = new CartEntity();

        cart.setProductId(product.getId());
        cart.setProductName(product.getProductName());
        cart.setPrice(product.getPrice());
        cart.setQuantity(1);

        cartService.saveCart(cart);

        return "redirect:/cart";
    }

    @GetMapping("/cart")
    public String viewCart(Model model) {

        model.addAttribute(
                "cartItems",
                cartService.getAllCartItems());

        return "cart";
    }

    @GetMapping("/remove-cart/{id}")
    public String removeCartItem(
            @PathVariable Long id) {

        cartService.deleteCartItem(id);

        return "redirect:/cart";
    }
}