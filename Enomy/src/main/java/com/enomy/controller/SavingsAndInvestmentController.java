package com.enomy.controller;

import java.text.DecimalFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.enomy.entity.UserInvestmentModel;
import com.enomy.entity.UserModel;
import com.enomy.repository.InvestmentRepository;
import com.enomy.repository.UserRepository;

@Controller
public class SavingsAndInvestmentController {
	
	@Autowired
	private InvestmentRepository investmentRepository;

	@Autowired
	private UserRepository userRepository;

	@GetMapping("/savingsandinvestments")
	public String showSavingAndInvestments() {
		return "savingsandinvestments";
	}

	@PostMapping("/showresults")
    public String showResults(@ModelAttribute("userInvestment") UserInvestmentModel userInvestment, 
    															Model model, HttpServletRequest request, 
    															HttpServletResponse response) {
        calculateInvestmentDetails(userInvestment);
        
        String userEmail = getLoggedInUserEmail(request);
        System.out.println("User Email from Session: " + userEmail);
        System.out.println(userInvestment.getInvestmentType() + userInvestment.getInitialLumpSum());
        UserModel user = userRepository.findByEmail(userEmail);
        
        userInvestment.setUser(user);
        userInvestment.setUserId(user.getUserId()); // Set the userId
        
        // Validate minimum monthly investment and initial lump sum
        if (!isValidInvestment(userInvestment)) {
            model.addAttribute("investmentType", userInvestment.getInvestmentType());
            model.addAttribute("investmentError", "Invalid investment. Please check minimum requirements.");
            return "savingsandinvestments";
        }
        
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        String formattedOneYearReturn = decimalFormat.format(userInvestment.getOneYearReturn());
        String formattedFiveYearReturn = decimalFormat.format(userInvestment.getFiveYearReturn());
        String formattedTenYearReturn = decimalFormat.format(userInvestment.getTenYearReturn());
        
        String formattedOneYearProfit = decimalFormat.format(userInvestment.getOneyeartotalprofit());
        String formattedFiveYearProfit = decimalFormat.format(userInvestment.getFiveyeartotalprofit());
        String formattedTenYearProfit = decimalFormat.format(userInvestment.getTenyeartotalprofit());

        String formattedOneYearFees = decimalFormat.format(userInvestment.getOneyeartotalfees());
        String formattedFiveYearFees = decimalFormat.format(userInvestment.getFiveyeartotalfees());
        String formattedTenYearFees = decimalFormat.format(userInvestment.getTenyeartotalfees());
        
        String formattedOneYearTaxes = decimalFormat.format(userInvestment.getOneyeartotaltaxes());
        String formattedFiveYearTaxes = decimalFormat.format(userInvestment.getFiveyeartotaltaxes());
        String formattedTenYearTaxes = decimalFormat.format(userInvestment.getTenyeartotaltaxes());
        
        // Set attributes for displaying in JSP
        request.setAttribute("investmentType", userInvestment.getInvestmentType());
        request.setAttribute("initialLumpSum", userInvestment.getInitialLumpSum());
        request.setAttribute("monthlyInvestment", userInvestment.getMonthlyInvestments());

        // Results attributes
        request.setAttribute("oneYearReturn", userInvestment.getOneYearReturn());
        request.setAttribute("fiveYearsReturn", userInvestment.getFiveYearReturn());
        request.setAttribute("tenYearsReturn", userInvestment.getTenYearReturn());

        request.setAttribute("oneYearProfit", userInvestment.getOneyeartotalprofit());
        request.setAttribute("fiveYearsProfit", userInvestment.getFiveyeartotalprofit());
        request.setAttribute("tenYearsProfit", userInvestment.getTenyeartotalprofit());
        
        request.setAttribute("oneYearFees", userInvestment.getOneyeartotalfees());
        request.setAttribute("fiveYearsFees", userInvestment.getFiveyeartotalfees());
        request.setAttribute("tenYearsFees", userInvestment.getTenyeartotalfees());
        
        request.setAttribute("oneYearTaxes", userInvestment.getOneyeartotaltaxes());
        request.setAttribute("fiveYearsTaxes", userInvestment.getFiveyeartotaltaxes());
        request.setAttribute("tenYearsTaxes", userInvestment.getTenyeartotaltaxes());
        
        request.setAttribute("formattedOneYearReturn", formattedOneYearReturn);
        request.setAttribute("formattedFiveYearReturn", formattedFiveYearReturn);
        request.setAttribute("formattedTenYearReturn", formattedTenYearReturn);

        request.setAttribute("formattedOneYearProfit", formattedOneYearProfit);
        request.setAttribute("formattedFiveYearProfit", formattedFiveYearProfit);
        request.setAttribute("formattedTenYearProfit", formattedTenYearProfit);
        
        request.setAttribute("formattedOneYearFees", formattedOneYearFees);
        request.setAttribute("formattedFiveYearFees", formattedFiveYearFees);
        request.setAttribute("formattedTenYearFees", formattedTenYearFees);

        request.setAttribute("formattedOneYearTaxes", formattedOneYearTaxes);
        request.setAttribute("formattedFiveYearTaxes", formattedFiveYearTaxes);
        request.setAttribute("formattedTenYearTaxes", formattedTenYearTaxes);

        // Additional attributes if needed
        investmentRepository.save(userInvestment);
        request.setAttribute("showResults", true);

        return "savingsandinvestments";
    }
	
	private String getLoggedInUserEmail(HttpServletRequest request) {
        // Retrieve user details from the security context
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication != null && authentication.isAuthenticated() && authentication.getPrincipal() instanceof UserDetails) {
            // Get the email from UserDetails
            return ((UserDetails) authentication.getPrincipal()).getUsername();
        }

        // Return null if user details are not available
        return null;
    }

	private double calculateFeeRate(double initialInvestment) {
		if (initialInvestment <= 500) {
			return 0.035;
		} else if (initialInvestment <= 1500) {
			return 0.027;
		} else if (initialInvestment <= 2500) {
			return 0.02;
		} else {
			return 0.015;
		}
	}

	private void calculateInvestmentDetails(UserInvestmentModel userInvestment) {
        switch (userInvestment.getInvestmentType()) {
            case "Basic Savings Plan": 
                userInvestment.setInvestmentType("Basic Savings Plan");
                calculateBasicSavingsPlan(userInvestment);
                break;
            case "Savings Plan Plus":
                userInvestment.setInvestmentType("Savings Plan Plus");
                calculateSavingsPlanPlus(userInvestment);
                break;
            case "Managed Stock Investments": 
                userInvestment.setInvestmentType("Managed Stock Investments");
                calculateManagedStockInvestments(userInvestment);
                break;
        }
    }
    
    private boolean isValidInvestment(UserInvestmentModel userInvestment) {
        switch (userInvestment.getInvestmentType()) {
            case "Basic Savings Plan":
                return userInvestment.getMonthlyInvestments() >= 50;
            case "Savings Plan Plus":
                return userInvestment.getMonthlyInvestments() >= 50 && userInvestment.getInitialLumpSum() >= 300;
            case "Managed Stock Investments":
                return userInvestment.getMonthlyInvestments() >= 150 && userInvestment.getInitialLumpSum() >= 1000;
            default:
                return false;
        }
    }

	private void calculateBasicSavingsPlan(UserInvestmentModel userInvestment) {
		double initialInvestment = userInvestment.getInitialLumpSum();
		double monthlyInvestment = userInvestment.getMonthlyInvestments();
		double minReturnRate = 0.012; // 1.2%
		double maxReturnRate = 0.024; // 2.4%
		double taxRate = 0.0;
		double feeRate = calculateFeeRate(initialInvestment);

		userInvestment.setOneYearReturn(calculateReturn(initialInvestment, minReturnRate, monthlyInvestment, 12));
		userInvestment.setFiveYearReturn(calculateReturn(initialInvestment, maxReturnRate, monthlyInvestment, 12 * 5));
		userInvestment.setTenYearReturn(calculateReturn(initialInvestment, maxReturnRate, monthlyInvestment, 12 * 10));

		userInvestment.setOneyeartotalprofit(userInvestment.getOneYearReturn());
		userInvestment.setFiveyeartotalprofit(userInvestment.getFiveYearReturn());
		userInvestment.setTenyeartotalprofit(userInvestment.getTenYearReturn());

		userInvestment.setOneyeartotalfees(calculateFee(userInvestment.getOneYearReturn(), feeRate));
		userInvestment.setFiveyeartotalfees(calculateFee(userInvestment.getFiveYearReturn(), feeRate));
		userInvestment.setTenyeartotalfees(calculateFee(userInvestment.getTenYearReturn(), feeRate));

		userInvestment.setOneyeartotaltaxes(0); // Assuming 0% tax
		userInvestment.setFiveyeartotaltaxes(0);
		userInvestment.setTenyeartotaltaxes(0);
	}

	private void calculateSavingsPlanPlus(UserInvestmentModel userInvestment) {
		double initialInvestment = userInvestment.getInitialLumpSum();
		double monthlyInvestment = userInvestment.getMonthlyInvestments();
		double minReturnRate = 0.03; // 3%
		double maxReturnRate = 0.055; // 5.5%
		double taxRate = 0.1; // 10%
		double feeRate = calculateFeeRate(initialInvestment);

		userInvestment.setOneYearReturn(calculateReturn(initialInvestment, minReturnRate, monthlyInvestment, 12));
		userInvestment.setFiveYearReturn(calculateReturn(initialInvestment, maxReturnRate, monthlyInvestment, 12 * 5));
		userInvestment.setTenYearReturn(calculateReturn(initialInvestment, maxReturnRate, monthlyInvestment, 12 * 10));

		userInvestment.setOneyeartotalprofit(userInvestment.getOneYearReturn());
		userInvestment.setFiveyeartotalprofit(userInvestment.getFiveYearReturn());
		userInvestment.setTenyeartotalprofit(userInvestment.getTenYearReturn());

		userInvestment.setOneyeartotalfees(calculateFee(userInvestment.getOneYearReturn(), feeRate));
		userInvestment.setFiveyeartotalfees(calculateFee(userInvestment.getFiveYearReturn(), feeRate));
		userInvestment.setTenyeartotalfees(calculateFee(userInvestment.getTenYearReturn(), feeRate));

		userInvestment.setOneyeartotaltaxes(calculateTax(userInvestment.getOneYearReturn(), taxRate, 12000));
		userInvestment.setFiveyeartotaltaxes(calculateTax(userInvestment.getFiveYearReturn(), taxRate, 12000));
		userInvestment.setTenyeartotaltaxes(calculateTax(userInvestment.getTenYearReturn(), taxRate, 12000));
	}

	private void calculateManagedStockInvestments(UserInvestmentModel userInvestment) {
		double initialInvestment = userInvestment.getInitialLumpSum();
		double monthlyInvestment = userInvestment.getMonthlyInvestments();
		double minReturnRate = 0.04; // 4%
		double maxReturnRate = 0.23; // 23%
		double taxRate = 0.1; // 10% (profits above £12,000)
		double taxRateHigh = 0.2; // 20% (profits above £40,000)
		double feeRate = calculateFeeRate(initialInvestment);

		userInvestment.setOneYearReturn(calculateReturn(initialInvestment, minReturnRate, monthlyInvestment, 12));
		userInvestment.setFiveYearReturn(calculateReturn(initialInvestment, maxReturnRate, monthlyInvestment, 12 * 5));
		userInvestment.setTenYearReturn(calculateReturn(initialInvestment, maxReturnRate, monthlyInvestment, 12 * 10));

		userInvestment.setOneyeartotalprofit(userInvestment.getOneYearReturn());
		userInvestment.setFiveyeartotalprofit(userInvestment.getFiveYearReturn());
		userInvestment.setTenyeartotalprofit(userInvestment.getTenYearReturn());

		userInvestment.setOneyeartotalfees(calculateFee(userInvestment.getOneYearReturn(), feeRate));
		userInvestment.setFiveyeartotalfees(calculateFee(userInvestment.getFiveYearReturn(), feeRate));
		userInvestment.setTenyeartotalfees(calculateFee(userInvestment.getTenYearReturn(), feeRate));

		userInvestment.setOneyeartotaltaxes(calculateTax(userInvestment.getOneYearReturn(), taxRate, 12000));
		userInvestment.setFiveyeartotaltaxes(calculateTax(userInvestment.getFiveYearReturn(), taxRate, 12000));
		userInvestment.setTenyeartotaltaxes(calculateTax(userInvestment.getTenYearReturn(), taxRateHigh, 40000));
	}

	// Utility methods for calculations

	private double calculateReturn(double initialLumpSum, double annualRate, double monthlyInvestment, int months) {
		double totalInvestment = initialLumpSum + (monthlyInvestment * months);
		return totalInvestment * Math.pow(1 + annualRate / 12, months / 12.0) - totalInvestment;
	}

	private double calculateFee(double totalReturn, double feeRate) {
		return totalReturn * feeRate;
	}

	private double calculateTax(double totalProfit, double taxRate, double taxableThreshold) {
		double taxableProfit = Math.max(0, totalProfit - taxableThreshold);
		return taxableProfit * taxRate;
	}

}
