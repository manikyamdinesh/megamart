package com.project.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.ProductEntity;
import com.project.repository.ProductRepository;
import com.project.service.ProductService;

@Service
public class ProductServiceImpl
implements ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<ProductEntity> getAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public ProductEntity getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}