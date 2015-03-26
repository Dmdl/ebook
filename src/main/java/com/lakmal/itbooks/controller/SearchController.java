package com.lakmal.itbooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lakmal.itbooks.entity.Book;
import com.lakmal.itbooks.service.BookService;
import com.lakmal.itbooks.model.SearchResponse;

@Controller
public class SearchController {
	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/search")
	public String searchBooks(@RequestParam("srchterm") String searchTerm,
			Model model) {
		System.out.println("searchTerm ::::::::::: " + searchTerm);

		SearchResponse response = bookService.searchbooks(searchTerm);

		if (null != response) {
			int totalPages = Integer.parseInt(response.getTotal());
			int count = (int) Math.ceil(totalPages / 10) + 1;
			System.out.println("count::::::::::: " + count);
			// List<Book> books = response.getBooks();
			// for (Book e : books) {
			// System.out.println("each " + e.getTitle());
			// Book book = bookService.findBook(e.getId());
			// if (null == book) {
			// System.out.println("book not exist");
			// bookService.save(book);
			// } else {
			// System.out.println("book exist");
			// int frequency = book.getFrequency();
			// book.setFrequency(frequency + 1);
			// bookService.save(book);
			// }
			// }
			model.addAttribute("serchResult", response);
			model.addAttribute("term", searchTerm);
			model.addAttribute("count", count);
			model.addAttribute("current", 1);
			return "search-result";
		} else {
			return "error";
		}
	}

	@RequestMapping("/search/book/{id}")
	public String serchBook(@PathVariable String id, Model model) {
		Book book = bookService.findBook(id);
		model.addAttribute("book", book);
		return "book-details";
	}

	@RequestMapping("/search/{query}/page/{number}")
	public String paginationResults(@PathVariable String query,
			@PathVariable int number, Model model) {
		System.out
				.println("query :::::: " + query + " number::::::: " + number);
		SearchResponse response = bookService.searchbooksPaging(query, number);
		int totalPages = Integer.parseInt(response.getTotal());
		int count = (int) Math.ceil(totalPages / 10) + 1;
		model.addAttribute("serchResult", response);
		model.addAttribute("term", query);
		model.addAttribute("count", count);
		model.addAttribute("current", number);
		return "search-result";
	}

	@RequestMapping("/searchPage")
	public String searchPaginationResults(
			@RequestParam("srchterm") String query,
			@RequestParam("srchterm") int number, Model model) {
		System.out
				.println("query :::::: " + query + " number::::::: " + number);
		SearchResponse response = bookService.searchbooksPaging(query, number);
		int totalPages = Integer.parseInt(response.getTotal());
		int count = (int) Math.ceil(totalPages / 10) + 1;
		model.addAttribute("serchResult", response);
		model.addAttribute("term", query);
		model.addAttribute("count", count);
		model.addAttribute("current", number);
		return "search-result";
	}
}
