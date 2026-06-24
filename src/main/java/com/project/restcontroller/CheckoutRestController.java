package com.project.restcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.project.entity.CheckoutEntity;
import com.project.service.CheckoutService;

@RestController
@RequestMapping("/api/checkout")
public class CheckoutRestController {

    @Autowired
    private CheckoutService checkoutService;

    @PostMapping
    public CheckoutEntity placeOrder(
            @RequestBody CheckoutEntity checkout) {

        return checkoutService.saveCheckout(checkout);
    }
}