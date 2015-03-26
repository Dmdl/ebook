package com.lakmal.itbooks.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.lakmal.itbooks.entity.Book;

public class SearchResponse {
	@JsonProperty("Error")
	private String error;
	@JsonProperty("Time")
	private double time;
	@JsonProperty("Total")
	private String total;
	@JsonProperty("Page")
	private int page;
	@JsonProperty("Books")
	private List<Book> books;

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public double getTime() {
		return time;
	}

	public void setTime(double time) {
		this.time = time;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

}
