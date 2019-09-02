package com.hnit.learning_shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;
import com.hnit.learning_shop.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private JavaMailSender javaMailSender;

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
	
	


	
		//邮箱发送
		@Value("${mail.fromMail.addr}")
		private String from;
		public void sendSimpleEmail(String to,String subject,String text){
			SimpleMailMessage mailMessage = new SimpleMailMessage();
			mailMessage.setFrom(from);
			mailMessage.setTo(to);
			mailMessage.setSubject(subject);
			mailMessage.setText(text);
			javaMailSender.send(mailMessage);
		}
	
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
		return xcUserMapper.register(username, email, password);
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
		if(list.size()>0)
			return list.get(0);
		return null;
	}
		
}
