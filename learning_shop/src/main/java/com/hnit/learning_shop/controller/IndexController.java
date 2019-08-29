package com.hnit.learning_shop.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.github.pagehelper.PageHelper;
import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.entity.CategorySub;
import com.hnit.learning_shop.service.CourseService;
import com.hnit.learning_shop.service.TeacherService;
import com.hnit.learning_shop.entity.Category;
import com.hnit.learning_shop.entity.Interest;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.IndexService;

@Controller
@RequestMapping("index")
public class IndexController {

	
	@Autowired
	private CourseService courseService;
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("teacherInfo")
	public String checkTeacherInfo(){
		return "index-gray";
	}
	

	@Autowired
	private IndexService indexService;


	@RequestMapping
	public String toIndex(Model model,@SessionAttribute(name="user",required=false)XcUser user) {
		
		//初始页面
		List<Category> catList = indexService.findAllCategory();
		List<Interest> interestList = indexService.findAllInterestByUid(user==null?0:user.getId());
		List<CategorySub> subCatList = new ArrayList<>();
		if(interestList != null && interestList.size() >0){
			for (Interest interest : interestList) {
				subCatList.add(indexService.findSubById(interest.getSubCatId()));
				if(subCatList.size() > 6){
					break;
				}
			}
		}else{
			subCatList = indexService.findAllSub().subList(0, 6);
		}
		if(interestList != null && interestList.size() >0)
			for (Category cat : catList) {
				for (CategorySub categorySub : cat.getCategorySubList()) {
					for (Interest interest : interestList) {
						if (interest.getSubCatId() == categorySub.getId()) {
							categorySub.setActive(true);
							break;
						}
					}
				}
			}
		model.addAttribute("catList", catList);
		model.addAttribute("subCatList", subCatList);
		
		
		//初始化页面上的 老师
		model.addAttribute("teacherList", teacherService.queryAllTeacher());
		
		CategorySub html = courseService.queryCategorySubById(1);
		PageHelper.startPage(1,4);
		html.getCourseList();
		//初始化页面 页面上（前端开发）
		model.addAttribute("html",html);
		// 查询页面上 Javascript工程师 
		CategorySub script = courseService.queryCategorySubById(3);
		model.addAttribute("script",script );
		//机器学习工程师
		model.addAttribute("mechan", courseService.queryCategorySubById(17));
		//前端开发工程师 
		model.addAttribute("UI", courseService.queryCategorySubById(18));
		
		return "learning-index";
	}

	
	
	
	//根据难度查询所有的课程4条数据显示在主页上
	@RequestMapping("queryBygrade")
	@ResponseBody
	public Result QueryCourseByGrade(String grade,int catid){
		System.out.println(catid+grade);
		PageHelper.startPage(1,5);
		
		return new Result(1,"成功",courseService.queryCourseByCatidAndGrade(grade,catid));
	}
	
	

	@RequestMapping("/saveInterest")
	public String saveInterest(String[] ids,@SessionAttribute(name="user",required=false)XcUser user) {
		if(user == null){
			return "redirect:../tologin";
		}
		List<Interest> interestList = indexService.findAllInterestByUid(user.getId());
		if(interestList!= null && interestList.size() > 0){
			indexService.updateInterest(ids,user.getId());
		}else{
			indexService.saveInterest(ids,user.getId());
		}
		return "redirect:../index";
	}
	
	@RequestMapping("/isShowInterestBox")
	@ResponseBody
	public Result isShowInterestBox(@SessionAttribute(name="user",required=false)XcUser user){
		if(user == null){
			return new Result(1);
		}
		
		List<Interest> list = indexService.findAllInterestByUid(user.getId());
		if(list == null || list.size() == 0){
			return new Result(1);
		}
		return new Result(0, "用户已选择");
	}
}
