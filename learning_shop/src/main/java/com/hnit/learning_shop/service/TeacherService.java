package com.hnit.learning_shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnit.learning_shop.dao.XcTeacherMapper;
import com.hnit.learning_shop.entity.XcTeacher;



@Service
public class TeacherService {
	@Autowired
	private XcTeacherMapper teacherMapper;
	
	public List<XcTeacher> queryAllTeacher(){
		return teacherMapper.selectByExample(null); 
	}
}
