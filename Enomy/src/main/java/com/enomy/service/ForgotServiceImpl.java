package com.enomy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.enomy.entity.UserModel;
import com.enomy.repository.UserRepository;

@Service
public class ForgotServiceImpl implements ForgotService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public String changePassword(String email, String password, String passwordConfirmation) {

		if (!password.equals(passwordConfirmation)) {
			return "Passwords Not Match, Try Again";
		}
		String encodedPassword = passwordEncoder.encode(password);
		try {
			// Find user by email
			UserModel userModel = userRepository.findByEmail(email);

			// If user does not exist, return error message
			if (userModel == null) {
				throw new IllegalArgumentException("Email Does Not Exist, Try Again!");
			}

			// Update user's password and save
			userModel.setPassword(encodedPassword);
			userRepository.save(userModel);

			return "Password Changed Successfully";
		} catch (IllegalArgumentException e) {
			// Catch and handle the specific exception for non-existing email
			return e.getMessage();
		} catch (Exception e) {
			// Handle other exceptions
			e.printStackTrace();
			return "Error";
		}
	}
}
