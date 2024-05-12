package com.enomy.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.transaction.annotation.Transactional;

import com.enomy.entity.Roles;
import com.enomy.entity.UserModel;
import com.enomy.repository.UserRepository;

@Transactional
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
    	 try {
             UserModel user = userRepository.findByEmail(email);

             if (user == null) {
            	 System.out.println("No email found: " + email);
                 throw new UsernameNotFoundException("User " + email + " is invalid, please enter again");
             }

             UserBuilder userBuilder = org.springframework.security.core.userdetails.User.builder();

             String[] roleNames = user.getRoles().stream().map(Roles::getRoleName).toArray(String[]::new);

             System.out.println("Role Name from UserDetailServiceImpl is " + roleNames);
             System.out.println("Password: " + user.getPassword());
             return userBuilder.username(user.getUserName())
                     .password(user.getPassword())
                     .roles(roleNames)
                     .build();
         } catch (BadCredentialsException e) {
             System.out.println("Login failed");
             throw new BadCredentialsException("Login failed. Please check your email and password.");
         }
     }
 }
