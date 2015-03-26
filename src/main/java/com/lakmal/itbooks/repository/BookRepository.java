package com.lakmal.itbooks.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lakmal.itbooks.entity.Book;

public interface BookRepository extends JpaRepository<Book, Integer> {
	public Book findById(String id);
}
