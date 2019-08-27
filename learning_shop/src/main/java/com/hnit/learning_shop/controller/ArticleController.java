package com.hnit.learning_shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("course")
public class ArticleController {
	
	@RequestMapping("article")
	public String openArticle(){
		return "learning-article";
	}
}
