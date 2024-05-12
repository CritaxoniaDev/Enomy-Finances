package com.enomy.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.enomy.entity.UserInvestmentModel;

@Repository
public interface InvestmentRepository extends JpaRepository<UserInvestmentModel, Long>{
	List<UserInvestmentModel> findByUserId(long userId);
}
