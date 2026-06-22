package com.project.service;

import java.util.List;
import com.project.entity.ProductEntity;

public interface ProductService {

    List<ProductEntity> getAllProducts();

    ProductEntity getProductById(Long id);
}