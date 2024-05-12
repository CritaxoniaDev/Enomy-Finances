package com.enomy.service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.enomy.entity.Roles;
import com.enomy.entity.UserModel;
import com.enomy.repository.RolesRepository;
import com.enomy.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	private final UserRepository userRepository;
    private final RolesRepository roleRepository;
    
    @Autowired
    private HttpSession session;
    
    @Autowired
    private PasswordEncoder passwordEncoder;
    
    public UserServiceImpl(UserRepository userRepository, RolesRepository roleRepository) {
		super();
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
	}
    
 // Method to list all users
    public List<UserModel> listAll() {
        return userRepository.findAll();
    }
    
 // Method to get a user by ID
    public UserModel get(Long id) {
        Optional<UserModel> optionalUser = userRepository.findById(id);
        if (optionalUser.isPresent()) {
            return optionalUser.get();
        } else {
            throw new IllegalArgumentException("User not found with ID: " + id);
        }
    }

	@Override
	public void registerNewClient(String fname, String lname, String email, String contactNumber, String password) {
		if (emailExists(email)) {
            throw new RuntimeException("Email already exists");
        }

        // Encode the password
        String encodedPassword = passwordEncoder.encode(password);

        // Create new user
        UserModel User = new UserModel();
        User.setFname(fname);
        User.setLname(lname);
        User.setEmail(email);
        User.setContactNumber(contactNumber); 
        User.setPassword(encodedPassword);
        
        Roles userRole = roleRepository.findByRoleName("User");
        if (userRole == null) {
            throw new RuntimeException("Role 'User' not found. Please make sure it exists in the database.");
        } else {
            User.setRoles(Collections.singleton(userRole));
            session.setAttribute("userEmail", email);
            session.setAttribute("name", User.getFname());
            // Save user to the database
            userRepository.save(User);
        }
	}

	@Override
	public boolean emailExists(String email) {
		 UserModel User = userRepository.findByEmail(email);
	        return User != null; 
	}

	@Override
	public void setPasswordEncoder(PasswordEncoder passwordEncoder) {
		
	}
}
