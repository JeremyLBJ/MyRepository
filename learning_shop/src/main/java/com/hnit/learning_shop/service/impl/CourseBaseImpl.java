package com.hnit.learning_shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnit.learning_shop.dao.CourseBaseMapper;
import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.CourseBaseExample;

@Service
public class CourseBaseImpl {
	
	@Autowired
	private CourseBaseMapper baseMapper;
	
	//查询所有的订单    数据库应从order表开始查询
	public List<CourseBase> order (CourseBase courseBase) {
		CourseBaseExample example = new CourseBaseExample();
		example.createCriteria().andIdEqualTo(courseBase.getId());
		List<CourseBase> list = baseMapper.selectByExample(example);
		return list;
	}

}
