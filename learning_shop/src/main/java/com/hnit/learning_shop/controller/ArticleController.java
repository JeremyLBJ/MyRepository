package com.hnit.learning_shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hnit.learning_shop.dao.CourseBaseMapper;

@Controller
@RequestMapping("course")
public class ArticleController {
	
	@Autowired
	private CourseBaseMapper courseBaseMapper;
	
	@RequestMapping("article")
	public String openArticle(int id,Model model){
		
		model.addAttribute("course", courseBaseMapper.selectByPrimaryKey(id));
		return "learning-article";
	}
}
