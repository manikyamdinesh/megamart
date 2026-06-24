package com.project.service;

import java.util.List;
import com.project.entity.CartEntity;

public interface CartService {

    CartEntity saveCart(CartEntity cart);

    List<CartEntity> getAllCartItems();

    void deleteCartItem(Long id);
}