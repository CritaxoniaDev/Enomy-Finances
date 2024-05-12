package com.enomy.service;

public interface CurrencyConversionService {
	
	 boolean saveConversion(double convertedAmount, String toCurrency, String fromCurrency, double fee, double finalAmount, String email);
	 
}
