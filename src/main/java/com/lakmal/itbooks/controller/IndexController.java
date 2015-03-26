package com.lakmal.itbooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lakmal.itbooks.service.BookService;

@Controller
public class IndexController {

	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/index")
	public String indexMethod(Model model) {
		System.out.println("we are in index page...........");
		model.addAttribute("books", bookService.recentBooks());
		return "index";
	}
}
