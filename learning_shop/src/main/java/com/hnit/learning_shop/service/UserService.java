package com.hnit.learning_shop.service;



import com.hnit.learning_shop.entity.XcUser;

public interface UserService {
	XcUser login(String username,String password);
	void addUser(String username,String email,String password);
	int regUser(String username,String email,String password);
	XcUser selectByEmail(String email);
}
