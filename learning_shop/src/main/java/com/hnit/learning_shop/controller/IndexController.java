package com.hnit.learning_shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("index")
public class IndexController {
	@RequestMapping
	public String toIndex(){
		return "learning-index";
	}
	
	
}
