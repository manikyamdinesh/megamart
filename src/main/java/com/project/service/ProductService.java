package com.project.service;

import java.util.List;
import com.project.entity.ProductEntity;

public interface ProductService {

    ProductEntity saveProduct(ProductEntity product);

    List<ProductEntity> getAllProducts();

    ProductEntity getProductById(Long id);

    void deleteProduct(Long id);
}