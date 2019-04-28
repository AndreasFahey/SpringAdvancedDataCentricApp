package com.sales.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Customer;
import com.sales.models.Loan;
import com.sales.repositories.LoanRepository;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Service
public class LoanService {
	
	@Autowired
    private LoanRepository loanRep;
	
	private DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	private Calendar calendar = Calendar.getInstance();
    
    public ArrayList<Loan> getLoans(){
        return (ArrayList<Loan>) loanRep.findAll();
    }
    
    public Loan addLoan(Loan loan){
    	
    	// due date calculation when viewing the list of loans
    	calendar.add(Calendar.DAY_OF_MONTH, loan.getCust().getLoanPeriod());
    	String dueDate = dateFormat.format(calendar.getTime()); 
    	loan.setDueDate(dueDate);
    	
    	return loanRep.save(loan);
    } // add loan
    
    public void deleteLoan(Loan loan){
    	
    	loanRep.delete(loan);
    }// delete loan

}
