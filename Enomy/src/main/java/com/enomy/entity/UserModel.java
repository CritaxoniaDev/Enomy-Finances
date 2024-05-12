package com.enomy.entity;


import java.util.Set;
import java.util.HashSet;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.*;

@Entity
@Table (name = "contact_info")
public class UserModel  {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name = "contact_id")
	private long userId;
	
	@Column (name = "contact_fname")
    private String fname;

	@Column (name = "contact_lname")
    private String lname;

	@Column (name = "contact_email")
    private String email;

	@Column (name = "contact_number")
    private String contactNumber;
    
	@Column (name = "contact_password")
    private String password;
	
	@ManyToMany
	@JoinTable( name = "user_role",
				joinColumns = @JoinColumn(name = "contact_id"),
				inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Roles> roles = new HashSet<>();
	
	public UserModel() {}
	
	public UserModel(String email, String password, Set<Roles> roles) {
		super();
		this.email = email;
		this.password = password;
		this.roles = roles;
	}

	public UserModel(int userId, String fname, String lname, String email, String contactNumber, String password) {
		this.userId = userId;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contactNumber = contactNumber;
		this.password = password;
	}
	
	public UserModel(int userId, String fname, String lname, String email, String contactNumber, String password,
			Set<Roles> roles) {
		super();
		this.userId = userId;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contactNumber = contactNumber;
		this.password = password;
		this.roles = roles;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}
	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Roles> getRoles() {
		return roles;
	}

	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}
	
	@Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserModel User = (UserModel) o;
        return email.equals(User.email) && password.equals(User.password);
    }

    // HashCode method to generate a hash code based on email and password
    @Override
    public int hashCode() {
        return Objects.hash(email, password);
    }

	public String getUserName() {
		return email;
		
	}
}
