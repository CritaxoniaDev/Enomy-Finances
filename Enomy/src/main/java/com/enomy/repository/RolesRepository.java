package com.enomy.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.enomy.entity.Roles;

@Repository
public interface RolesRepository extends JpaRepository<Roles, Integer> {

	@Query("SELECT r FROM Roles r WHERE r.roleName IN :roles")
    Set<Roles> findBySpecificRoles(@Param("roles") Set<String> roles);
	
	Roles findByRoleName(String roleName);
	
}