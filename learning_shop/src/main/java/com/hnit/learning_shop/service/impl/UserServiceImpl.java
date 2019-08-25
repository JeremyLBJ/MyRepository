package com.hnit.learning_shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;
import com.hnit.learning_shop.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	XcUserMapper XcUserMapper;	
	
	@Override
	public XcUser login(String username, String password) {
		XcUserExample example = new XcUserExample();
		example.createCriteria().andUsernameEqualTo(username).andPasswordEqualTo(password);
		List<XcUser> list = XcUserMapper.selectByExample(example);
		if(list.size()>0)
			return list.get(0);
		return null;
	}
	
}
