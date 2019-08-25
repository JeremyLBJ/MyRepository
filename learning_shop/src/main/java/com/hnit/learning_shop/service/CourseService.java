package com.hnit.learning_shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnit.learning_shop.dao.CategoryMapper;
import com.hnit.learning_shop.entity.Category;

@Service
public class CourseService {

	
	@Autowired
	private CategoryMapper categoryMapper;
	
	
	//查询所有的课程（一级）分类
	public List<Category> queryAllCategory(){
		return categoryMapper.selectByExample(null);
	}
	
	
	
}
