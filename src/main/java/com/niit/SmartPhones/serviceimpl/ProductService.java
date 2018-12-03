package com.niit.SmartPhones.serviceimpl;
import java.util.List;

import com.niit.SmartPhones.model.Product;
public interface ProductService {
public List<Product>getAllProducts();
public Product getProductById(int productid);
}