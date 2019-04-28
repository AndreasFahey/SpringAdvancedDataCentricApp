package com.sales.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sales.models.Customer;
import com.sales.services.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/showCustomers", method = RequestMethod.GET)
	public String getCustomers(Model m) {
		ArrayList<Customer> customers = customerService.getCustomers();
		m.addAttribute("customers", customers);
		return "/showCustomers";
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public String getCust(@ModelAttribute("custAdd") Customer c, HttpServletRequest h) {
		return "addCustomer";
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String addBook(@Valid @ModelAttribute("custAdd") Customer c, BindingResult result, HttpServletRequest h,
			Model m) {

		if (result.hasErrors()) {
			return "addCustomer";
		} else {
			customerService.addCust(c);

			// re-populate the list
			ArrayList<Customer> customers = customerService.getCustomers();

			// add books to the model
			m.addAttribute("customers", customers);

			// return to show books page
			return "showCustomers";
		}

	}
	
}
