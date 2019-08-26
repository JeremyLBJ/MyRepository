package com.hnit.learning_shop.service;



import com.hnit.learning_shop.entity.XcUser;

public interface UserService {
	XcUser login(String username,String password);
}
