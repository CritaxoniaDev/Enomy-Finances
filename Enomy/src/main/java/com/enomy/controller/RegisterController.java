package com.enomy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.enomy.service.UserService;


@Controller
public class RegisterController {
	
	private final UserService userService;
	
	@Autowired
    public RegisterController(UserService userService) {
        this.userService = userService;
    }
	
	@GetMapping("/register")
	public ModelAndView showRegistrationForm() {
		return new ModelAndView("register");
		
	}
	
	@PostMapping("/register")
	public ModelAndView registerUser(@RequestParam String fname, 
									@RequestParam String lname, 
									@RequestParam String email, 
									@RequestParam String contactNumber, 
									@RequestParam String password, HttpSession session,
						            RedirectAttributes redirectAttributes) {
		
	    if (userService.emailExists(email)) {
	        ModelAndView mav = new ModelAndView("register");
	        mav.addObject("error", "Email already exists, Try Again!");
	        return mav;
	    }	   
	    
	    userService.registerNewClient(fname, lname, email, contactNumber, password);
	    ModelAndView mav = new ModelAndView();
	    mav.setViewName("redirect:/confirmation");
	    return mav;
	}
	
}