package com.niit.SmartPhones.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String SmartPhones() {
		return "index";
	}

	@RequestMapping("/about")
	public String aboutus(Model model) {
		return "about";
	}


	@GetMapping("/productdisplay")
	public String ViewAllproducts(Model model) {
		return "viewAllProducts";
	}

	@GetMapping("/Sumit")
	public String SumitRanjan(Model model) {
		return "Sumit";
	}

	@GetMapping("/loginid")
	public String login() {
		return "loginid";
	
	}

}