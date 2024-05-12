package com.enomy.service;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.enomy.entity.UserModel;

@Service
public interface UserService {
	
	void registerNewClient(String fname, String lname, String email, String contactNumber, String password);

	boolean emailExists(String email);
	
	void setPasswordEncoder(PasswordEncoder passwordEncoder);

	List<UserModel> listAll();
	
}

