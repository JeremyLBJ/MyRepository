package com.hnit.learning_shop.service;

import java.util.List;

import com.hnit.learning_shop.entity.XcRole;
import com.hnit.learning_shop.entity.XcUser;

public interface UserService {
	XcUser login(String username,String password);

	List<XcUser> findAllUserList();

	void saveUser(XcUser user);
	void addUser(String username,String email,String password);
	int regUser(String username,String email,String password);
	XcUser selectByEmail(String email);
	
	XcUser selectByUsername(String username);
	
	void sendSimpleEmail(String to,String subject,String text);

	XcUser findUserById(Integer id);

	List<XcRole> findAllRoleList();

	void saveRole(XcRole role);

	XcRole findRoleById(Integer id);

	List<XcRole> findOtherRolesByUid(Integer id);

	void addRole2User(Integer id, Integer uid);

}
