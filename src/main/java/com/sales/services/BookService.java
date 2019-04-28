package com.sales.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Book;
import com.sales.repositories.BookRepository;

@Service
public class BookService {
	
	@Autowired
    private BookRepository bookRep;
    
    public ArrayList<Book> getBooks(){
        return (ArrayList<Book>) bookRep.findAll();
    }
    
    public Book addBook(Book book){
    	return bookRep.save(book);
    }

}
