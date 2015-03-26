package com.lakmal.itbooks.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lakmal.itbooks.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	User findByName(String name);
}
