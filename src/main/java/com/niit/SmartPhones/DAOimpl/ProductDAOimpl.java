package com.niit.SmartPhones.DAOimpl;

import javax.transaction.Transactional;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.SmartPhones.DAO.ProductDAO;
import com.niit.SmartPhones.model.Product;

import java.util.ArrayList;
import java.util.List;

@Repository
@Transactional

public class ProductDAOimpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory ;
   public List<Product> getAllProducts()
	{
		List<Product> allProducts=new ArrayList<Product>();
		allProducts=sessionFactory.openSession().createQuery("from Product").list();
		return allProducts;
		
		
	}
public Product getProductById(int productid) {
	
	return (Product) sessionFactory.openSession().get(Product.class,productid);
}


}
