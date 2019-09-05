package com.hnit.learning_shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.service.CourseService;

@Controller
public class AdminController {

	@Autowired
	private CourseService couseService; 
	
	@RequestMapping("/findAllCourseList")
	@ResponseBody
	public List<CourseBase> findAllCourseList(){
		List<CourseBase> courseList = couseService.queryAllCourse();
		return courseList;
	}
	
}
