package com.enomy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.enomy.service.ForgotService;

@Controller
public class ForgotPasswordController {
	
	@Autowired
	private ForgotService forgotService;
	
	@GetMapping("/forgotpassword")
    public String showForgotPassword(Model model) {
        model.addAttribute("errorMessage", null); // Initialize errorMessage as null
        return "forgotpassword";
    }
	
	@RequestMapping(value = "/forgotpassword", method = RequestMethod.POST)
    public String changePassword(@RequestParam("email") String email,
                                 @RequestParam("password") String password,
                                 @RequestParam("passwordConfirmation") String passwordConfirmation,
                                 RedirectAttributes redirectAttributes) {
        String resultMessage = forgotService.changePassword(email, password, passwordConfirmation);
        
        if (!resultMessage.equals("Password Changed Successfully")) {
            redirectAttributes.addAttribute("errorMessage", resultMessage); // Add error message to redirect
            return "redirect:forgotpassword"; // Redirect back to forgotpassword.jsp with error message
        }
        
        redirectAttributes.addAttribute("successMessage", resultMessage); // Add success message to redirect
        return "redirect:login"; // Redirect to login page with success message
    }
}
