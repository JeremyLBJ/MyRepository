package com.hnit.learning_shop.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.XcUser;
@RunWith(SpringRunner.class)
@SpringBootTest
@MapperScan("com.hnit.learning_shop.dao")
public class UserTest {
	@Autowired
	UserService userService;
	
	@Test
	public void test(){
		XcUser list = userService.login("yc", "123");
		System.out.println(list);
	}
}
