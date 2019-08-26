package com.hnit.learning_shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.service.CourseService;

@Controller
@RequestMapping("course")
public class CourseController {

	@Autowired
	private CourseService courseService;
	
	
	
	@GetMapping("course")
	public String queryAll(Model model){
		//查询所有的课程分类（一级）
		model.addAttribute("categoryList",courseService.queryAllCategory());
		//查询所有的二级分类课程
		model.addAttribute("categorySubList",courseService.queryAllCategorySub());
		//查询所有的课程
		model.addAttribute("courseBaseList", courseService.queryAllCourse());
		return "learning-list";
	}
	
	
	//通过一级分类查询相关的二级分类
	@GetMapping("queryByid")
	@ResponseBody
	public Result queryCategorySubById(int id,Model model){
		
		return new Result(1, "成功", courseService.queryCategory(id).getCategorySubList());
	}
	
	
	
	
	
}
