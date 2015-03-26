package com.lakmal.itbooks.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lakmal.itbooks.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {
	Role findByName(String string);
}
