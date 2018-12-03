package com.niit.SmartPhones.serviceimpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.SmartPhones.DAO.ProductDAO;
import com.niit.SmartPhones.model.Product;
import java.util.List;



@Service
public class ProductServiceImpl  implements ProductService {
	@Autowired
	ProductDAO productDao;
	public List<Product>getAllProducts()
	{
		return productDao.getAllProducts();
	}
	public Product getProductById(int productid)
	{
		return productDao.getProductById(productid);
	}
}
	
	


