package com.project.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.CartEntity;
import com.project.repository.CartRepository;
import com.project.service.CartService;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartRepository cartRepository;

    @Override
    public CartEntity saveCart(CartEntity cart) {
        return cartRepository.save(cart);
    }

    @Override
    public List<CartEntity> getAllCartItems() {
        return cartRepository.findAll();
    }

    @Override
    public void deleteCartItem(Long id) {
        cartRepository.deleteById(id);
    }
}