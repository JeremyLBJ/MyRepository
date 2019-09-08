package com.hnit.learning_shop.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.entity.CategorySub;
import com.hnit.learning_shop.entity.CourseBase;
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
	private HttpServletRequest request;
	@Autowired
	private CourseService courseService;
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
    private RedisTemplate<String,String> redisTemplate;
	
	
	@RequestMapping("teacherInfo")
	public String checkTeacherInfo(){
		return "index-gray";
	}
	

	@Autowired
	private IndexService indexService;


	@SuppressWarnings("unchecked")
	@RequestMapping("/toIndex")
	public String toIndex(Model model) throws IOException {
		XcUser user = (XcUser) request.getSession().getAttribute("user");
		//初始页面
		ObjectMapper objectMapper = new ObjectMapper();
		String catListByUid = "catList:" + (user==null?0:user.getId());
		List<CategorySub> subCatList = new ArrayList<>();
		String catJson = redisTemplate.boundValueOps(catListByUid).get();
		
		
		
		
		List<Category> catList = indexService.findAllCategory();
		List<Interest> interestList = indexService.findAllInterestByUid(user==null?0:user.getId());
		
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
		if(catJson != null){
			catList = objectMapper.readValue(catJson, List.class);
		}else{
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
			if(catList == null){
				catList = new ArrayList<>();
			}
			String json = objectMapper.writeValueAsString(catList);
			redisTemplate.boundValueOps(catListByUid).set(json);
		}
		
		//根据阅读数量显示精品推荐
		List<CourseBase> courses = indexService.findRecommend();
		
		System.out.println(courses);
		model.addAttribute("courses", courses);
		model.addAttribute("catList", catList);
		model.addAttribute("subCatList", subCatList);
		
		System.out.println(catList);
		System.out.println(subCatList);
		//初始化页面上的 老师
		model.addAttribute("teacherList", teacherService.queryAllTeacher());
		
		CategorySub html = courseService.queryCategorySubById(1);
		PageHelper.startPage(1,4);
		html.getCourseList();
		//初始化页面 页面上（前端开发）
		model.addAttribute("html",html);
		// 查询页面上 Javascript工程师 
		CategorySub script = courseService.queryCategorySubById(3);
		PageHelper.startPage(0,4);
		script.getCourseList();
		model.addAttribute("script",script );
		//机器学习工程师  微信开发
		model.addAttribute("mechan", courseService.queryCategorySubById(17));
		//前端开发工程师 
		model.addAttribute("UI", courseService.queryCategorySubById(18));
		
		
		//显示我的课程表
		List<CourseBase> courseList =  indexService.findAllCourseByUid(user.getId());
		model.addAttribute("courseList", courseList);
		return "learning-index";
	}

	
	
	
	//根据难度查询所有的课程4条数据显示在主页上
	@RequestMapping("queryBygrade")
	@ResponseBody
	public Result QueryCourseByGrade(String grade,int catid){
		System.out.println(catid+grade);
		PageHelper.startPage(1,4);
		
		if("热门".equals(grade)) {
			return new Result(1,"成功" ,courseService.queryCourseByCatid(catid));
		}
		return new Result(1,"成功",courseService.queryCourseByCatidAndGrade(grade,catid));
	}
	
	

	@RequestMapping("/saveInterest")
	public String saveInterest(String[] ids) {
		XcUser user = (XcUser) request.getSession().getAttribute("user");
		if(user == null){
			return "redirect:/tologin";
		}
		List<Interest> interestList = indexService.findAllInterestByUid(user.getId());
		if(interestList!= null && interestList.size() > 0){
			indexService.updateInterest(ids,user.getId());
			String catListByUid = "catList:" + (user==null?0:user.getId());
			redisTemplate.delete(catListByUid);
		}else{
			indexService.saveInterest(ids,user.getId());
		}
		return "redirect:/index/toIndex";
	}
	
	@RequestMapping("/isShowInterestBox")
	@ResponseBody
	public Result isShowInterestBox(){
		XcUser user = (XcUser) request.getSession().getAttribute("user");
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
