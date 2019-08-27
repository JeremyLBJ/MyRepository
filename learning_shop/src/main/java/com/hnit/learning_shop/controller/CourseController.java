package com.hnit.learning_shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.entity.CategorySub;
import com.hnit.learning_shop.service.CourseService;

@Controller
@RequestMapping("course")
public class CourseController {

	@Autowired
	private CourseService courseService;
	
	
	
	@GetMapping("course")
	public String queryAll(Model model,@RequestParam(defaultValue="1")int page){
		//查询所有的课程分类（一级）
		model.addAttribute("categoryList",courseService.queryAllCategory());
		//二级分类部分查询
		PageHelper.startPage(page, 10);
		List<CategorySub> categorySubList = courseService.queryAllCategorySub();
		//查询所有的二级分类课程
		model.addAttribute("categorySubList",courseService.queryAllCategorySub());
		//查询所有的课程
		model.addAttribute("courseBaseList", courseService.queryAllCourse());
		return "learning-list";
	}
	
	
	
	
	//通过一级分类查询相关的二级分类
	@GetMapping("queryByCid")
	@ResponseBody
	public Result queryCategorySubByCid(int cid){
		return new Result(1, "成功", courseService.queryCategory(cid).getCategorySubList());
	}
	
	
	//通过二级分类查询相关课程
	@GetMapping("queryById")
	@ResponseBody
	public Result queryByCourseById(int id){
		return new Result(1,"成功",courseService.queryCategorySubById(id));
	}
	//根据二级课程和难度进行查询相关课程
	@GetMapping("queryByIdAndGrade")
	@ResponseBody
	public Result queryByIdAndGrade(int catid,String grade){
		return new Result(1,"成功",courseService.queryCourseByCatidAndGrade(grade,catid));
	}
	
	
}
