package com.niit.SmartPhones.controller;

import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.SmartPhones.model.Product;
import com.niit.SmartPhones.serviceimpl.ProductService;

@Controller
public class ProductController 
{

	@Autowired
	ProductService productService;
	
	@RequestMapping("/allProducts")
	public String getAllProducts(Model model)
	{
		List<Product> allProducts=productService.getAllProducts();
		model.addAttribute("allProducts", allProducts);
		return "viewAllProducts";
	}


	@RequestMapping("/viewProduct/{id}")
	public String viewProduct(@PathVariable("id") int id, Model model) {
		model.addAttribute("product", this.productService.getProductById(id));

		return "viewProduct";


}

	@RequestMapping("/updateProduct/{id}")
	public String updateProduct(@PathVariable("id") int id, Model model)

	{
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "updateProduct";

	}


	@RequestMapping("/AddProducts/{id}")
	public String AddProducts(@PathVariable("id") int id, Model model)

	{
		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "AddProducts";

	}
}