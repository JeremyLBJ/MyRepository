package com.hnit.learning_shop.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.test.context.junit4.SpringRunner;

import com.hnit.learning_shop.dao.CategoryMapper;
import com.hnit.learning_shop.dao.CategorySubMapper;
import com.hnit.learning_shop.entity.Category;
import com.hnit.learning_shop.entity.CategorySub;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CourseTest {
	@Autowired
	private CourseService cs;
	
	@Autowired
	private CategorySubMapper csm;
	@Test
	public void test(){
		 List<Category> list = cs.queryAllCategory();
		System.out.println(list);
	}
	@Test
	public void test1(){
		CategorySub list = csm.selectByPrimaryKey(1);
		System.out.println(list);
	}
	
}
