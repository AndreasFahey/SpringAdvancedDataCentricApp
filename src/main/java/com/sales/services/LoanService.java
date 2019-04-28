package com.sales.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Customer;
import com.sales.models.Loan;
import com.sales.repositories.LoanRepository;

@Service
public class LoanService {
	
	@Autowired
    private LoanRepository loanRep;
    
    public ArrayList<Loan> getLoans(){
        return (ArrayList<Loan>) loanRep.findAll();
    }
    
    public Loan addLoan(Loan loan){
    	return loanRep.save(loan);
    }
    
    public void deleteLoan(Loan loan){
    	loanRep.delete(loan);
    }

}
