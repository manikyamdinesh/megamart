package com.project.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.project.entity.CartEntity;
import com.project.entity.ProductEntity;
import com.project.service.CartService;
import com.project.service.ProductService;

@RestController
@RequestMapping("/api/cart")
public class CartRestController {

    @Autowired
    private CartService cartService;

    @Autowired
    private ProductService productService;

    @PostMapping("/add/{productId}")
    public String addToCart(@PathVariable Long productId){

        ProductEntity product =
                productService.getProductById(productId);

        CartEntity cart = new CartEntity();

        cart.setProductId(product.getId());
        cart.setProductName(product.getProductName());
        cart.setPrice(product.getPrice());
        cart.setQuantity(1);

        cartService.saveCart(cart);

        return "Product Added To Cart";
    }

    @GetMapping
    public List<CartEntity> getCartItems(){
        return cartService.getAllCartItems();
    }

    @DeleteMapping("/remove/{id}")
    public String removeCartItem(@PathVariable Long id){

        cartService.deleteCartItem(id);

        return "Item Removed";
    }
}