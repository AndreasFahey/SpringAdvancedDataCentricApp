package com.sales.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Book;
import com.sales.models.Customer;
import com.sales.repositories.CustomerRepository;

@Service
public class CustomerService {
	
	@Autowired
    private CustomerRepository custRep;
    
    public ArrayList<Customer> getCustomers(){
        return (ArrayList<Customer>) custRep.findAll();
    }
    
    public Customer addCust(Customer cust){
    	return custRep.save(cust);
    }

}
