package com.lakmal.itbooks.service;

import java.util.List;

import com.lakmal.itbooks.entity.Book;
import com.lakmal.itbooks.model.SearchResponse;

public interface BookService {
	public SearchResponse searchbooks(String serchParam);

	public Book findBook(String id);

	public void save(Book book);

	public Book checkDb(String id);

	public List<Book> recentBooks();

	public SearchResponse searchbooksPaging(String serchParam, int page);
}
