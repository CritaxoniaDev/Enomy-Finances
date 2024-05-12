package com.enomy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.enomy.entity.CurrencyConversionModel;

@Repository
public interface CurrencyConversionRepository extends JpaRepository<CurrencyConversionModel, Long> {
	
	
}
