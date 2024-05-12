package com.enomy.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.enomy.entity.UserModel;

@Repository
public interface UserRepository extends JpaRepository<UserModel, Long> {

	@Query("SELECT u FROM UserModel u WHERE u.userId = :userId")
    Optional<UserModel> findByUserId(@Param("userId") Long userId);
	
	UserModel findByEmail(String email);

	void deleteByUserId(Long userId);
	
}
