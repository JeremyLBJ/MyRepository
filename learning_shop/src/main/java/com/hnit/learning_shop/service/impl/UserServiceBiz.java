package com.hnit.learning_shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;

@Service
public class UserServiceBiz {
	@Autowired
	private XcUserMapper xcUserMapper;

	@Transactional
	//通过用户名查询 用户相关信息 在获取最的密码 在修改
	public int newPassword(XcUser user) {
		XcUserExample example = new XcUserExample();
		List<XcUser> list = userName(user);
		example.createCriteria().andUsernameEqualTo(list.get(0).getUsername());
		int i = xcUserMapper.updateByExampleSelective(user, example);
		return i;
	}
	//查询用户名是否存在
	public List<XcUser> userName(XcUser user) {
		XcUserExample example = new XcUserExample();
		example.createCriteria().andUsernameEqualTo(user.getUsername());
		List<XcUser> list = xcUserMapper.selectByExample(example);
		return list;
	}
	
	

}
