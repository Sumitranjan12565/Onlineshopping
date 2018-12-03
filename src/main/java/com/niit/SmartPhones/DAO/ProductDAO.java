package com.niit.SmartPhones.DAO;

import java.util.List;

import com.niit.SmartPhones.model.Product;
public interface ProductDAO {
public List<Product>getAllProducts();
public Product getProductById(int productid);


}
