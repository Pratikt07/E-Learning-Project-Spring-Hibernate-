package com.cdac.dao;

import java.util.List;

import com.cdac.dto.User;

public interface userDao {
	void insertUser(User user);
	boolean checkUser(User user);
	boolean updateUser(User user);
	String forgotPassword(String userName);
	List<User> selectUsers();
	User selectUser(User user);
	
	
}
