package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.project.entity.CheckoutEntity;
import com.project.service.CheckoutService;

@Controller
public class CheckoutController {

    @Autowired
    private CheckoutService checkoutService;

    @GetMapping("/checkout")
    public String checkoutPage() {
        return "checkout";
    }

    @PostMapping("/place-order")
    public String placeOrder(
            @ModelAttribute CheckoutEntity checkout) {

        checkoutService.saveCheckout(checkout);

        return "redirect:/order-history";
    }
}