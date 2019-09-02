package com.hnit.learning_shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnit.learning_shop.dao.UserRoleMapper;
import com.hnit.learning_shop.dao.XcRoleMapper;
import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.UserRoleKey;
import com.hnit.learning_shop.entity.XcRole;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;
import com.hnit.learning_shop.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private XcUserMapper xcUserMapper;	
	
	@Autowired
	private XcRoleMapper xcRoleMapper;
	
	@Autowired
	private UserRoleMapper userRoleMapper;
	
	@Override
	public XcUser login(String username,String password) {
		
		XcUserExample example = new XcUserExample();
		example.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(password);
		List<XcUser> list = xcUserMapper.selectByExample(example);
		if(list.size()>0)
			return list.get(0);
		return null;
	}

	public List<XcUser> findAllUserList() {
		return xcUserMapper.selectByExample(null);
	}

	public void saveUser(XcUser user) {
		xcUserMapper.insertSelective(user);
	}
	
	public void addUser(String username, String email, String password) {
		XcUser record=new XcUser();
		record.setUsername(username);
		record.setEmail(email);
		record.setPassword(password);
		xcUserMapper.insert(record);
	}

	@Override
	public int regUser(String username, String email, String password) {
		XcUser record = new XcUser();
		record.setUsername(username);
		record.setEmail(email);
		record.setPassword(password);
		return xcUserMapper.insert(record );
	}

	@Override
	public XcUser selectByEmail(String email) {
		XcUserExample example = new XcUserExample();
		example.createCriteria().andEmailEqualTo(email);
		List<XcUser> list = xcUserMapper.selectByExample(example);
		if(list.size()>0)
			return list.get(0);
		return null;
	}

	@Override
	public XcUser selectByUsername(String username) {
		XcUserExample example = new XcUserExample();
		example.createCriteria().andUsernameEqualTo(username);
		List<XcUser> list = xcUserMapper.selectByExample(example);
		if(list != null && list.size()>0)
			return list.get(0);
		return null;
	}

	@Override
	public XcUser findUserById(Integer id) {
		return xcUserMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<XcRole> findAllRoleList() {
		return xcRoleMapper.selectByExample(null);
	}

	@Override
	public void saveRole(XcRole role) {
		xcRoleMapper.insert(role);
	}

	@Override
	public XcRole findRoleById(Integer id) {
		return xcRoleMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<XcRole> findOtherRolesByUid(Integer id) {
		return xcRoleMapper.findOtherRolesByUid(id);
	}

	@Override
	public void addRole2User(Integer id, Integer uid) {
		UserRoleKey record = new UserRoleKey();
		record.setRid(id);
		record.setUid(uid);
		userRoleMapper.insert(record);
	}
		
}
