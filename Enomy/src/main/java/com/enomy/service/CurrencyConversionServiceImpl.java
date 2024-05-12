package com.enomy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enomy.entity.CurrencyConversionModel;
import com.enomy.entity.UserInvestmentModel;
import com.enomy.entity.UserModel;
import com.enomy.repository.CurrencyConversionRepository;
import com.enomy.repository.InvestmentRepository;
import com.enomy.repository.UserRepository;

@Service
public class CurrencyConversionServiceImpl implements CurrencyConversionService {

	@Autowired
	private CurrencyConversionRepository currencyConversionRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private InvestmentRepository investmentRepository;
	
	public List<CurrencyConversionModel> listAll() {
        return currencyConversionRepository.findAll();
    }
	
	public List<UserInvestmentModel> listAllInvestments() {
        return investmentRepository.findAll(); // Assuming you have a repository for investments
    }
	
	@Override
	public boolean saveConversion(double convertedAmount, String toCurrency, String fromCurrency, double fee,
			double finalAmount, String email) {
		try {
			UserModel userModel = userRepository.findByEmail(email);
			
			if (userModel != null) {
				CurrencyConversionModel currencyConversion = new CurrencyConversionModel();
				currencyConversion.setUser(userModel);
				currencyConversion.setConvertedAmount(convertedAmount);
				currencyConversion.setToCurrency(toCurrency);
				currencyConversion.setFromCurrency(fromCurrency);
				currencyConversion.setFee(fee);
				currencyConversion.setFinalAmount(finalAmount);
				
				System.out.println("Currency information Saved");
				
				currencyConversionRepository.save(currencyConversion);		
				return true;
			} else {
				
				return false;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
