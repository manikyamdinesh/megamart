package com.project.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.CheckoutEntity;
import com.project.repository.CheckoutRepository;
import com.project.service.CheckoutService;

@Service
public class CheckoutServiceImpl implements CheckoutService {

    @Autowired
    private CheckoutRepository checkoutRepository;

    @Override
    public CheckoutEntity saveCheckout(
            CheckoutEntity checkout) {

        return checkoutRepository.save(checkout);
    }
}