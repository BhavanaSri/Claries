package com.spring.dao;

import com.spring.model.User;

public interface UserDAO {

	
	public boolean saveUser(User user);
	 public User get(String email);
	
}