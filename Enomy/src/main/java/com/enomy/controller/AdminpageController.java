package com.enomy.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.enomy.entity.CurrencyConversionModel;
import com.enomy.entity.UserInvestmentModel;
import com.enomy.entity.UserModel;
import com.enomy.service.CurrencyConversionServiceImpl;
import com.enomy.service.UserServiceImpl;

@Controller
public class AdminpageController {
	
	private final UserServiceImpl userService;
	private final CurrencyConversionServiceImpl currencyConversionServiceImpl;
	
    public AdminpageController(UserServiceImpl userService, CurrencyConversionServiceImpl currencyConversionServiceImpl) {
		this.userService = userService;
		this.currencyConversionServiceImpl = currencyConversionServiceImpl;
	}
    
    @GetMapping("/adminpage")
    public String showAdminpage(Model model, Authentication authentication) {
    	List<UserModel> users = userService.listAll();
    	List<CurrencyConversionModel> currencyTransactions = currencyConversionServiceImpl.listAll();
    	List<UserInvestmentModel> investments = currencyConversionServiceImpl.listAllInvestments();
    	model.addAttribute("investment", investments); // Add investments to the model
        model.addAttribute("currency", currencyTransactions);
        model.addAttribute("user", users);

        return "adminpage";
    }
}
