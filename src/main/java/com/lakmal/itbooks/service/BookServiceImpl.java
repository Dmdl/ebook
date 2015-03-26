package com.lakmal.itbooks.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lakmal.itbooks.entity.Book;
import com.lakmal.itbooks.service.BookService;
import com.lakmal.itbooks.model.SearchResponse;
import com.lakmal.itbooks.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService{
	RestTemplate restTemplate = new RestTemplate();
	ObjectMapper mapper = new ObjectMapper();
	@Autowired
	private BookRepository bookRepository;

	@Override
	public SearchResponse searchbooks(String serchParam) {
		try {
			String response = restTemplate.getForObject(
					"http://it-ebooks-api.info/v1/search/{query}",
					String.class, serchParam);
			System.out.println(response);
			SearchResponse res = mapper.readValue(response,
					SearchResponse.class);
			System.out.println("response object :::::::::; " + res);
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public SearchResponse searchbooksPaging(String serchParam, int page) {
		try {
			String response = restTemplate
					.getForObject(
							"http://it-ebooks-api.info/v1/search/{query}/page/{number}",
							String.class, serchParam, page);
			System.out.println(response);
			SearchResponse res = mapper.readValue(response,
					SearchResponse.class);
			System.out.println("response object ::::::::: " + res);
			return res;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public Book findBook(String id) {
		try {
			String response = restTemplate
					.getForObject("http://it-ebooks-api.info/v1/book/{id}",
							String.class, id);
			return mapper.readValue(response, Book.class);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public void save(Book book) {
		bookRepository.save(book);
	}

	@Override
	public Book checkDb(String id) {
		return bookRepository.findById(id);
	}

	@Override
	public List<Book> recentBooks() {
		return bookRepository.findAll(
				new PageRequest(0, 9, Direction.DESC, "id")).getContent();
	}

}
