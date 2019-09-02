package com.hnit.learning_shop.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.service.impl.CourseBaseImpl;

@RestController
public class CourseBaseController {
	
	@Resource
	private CourseBaseImpl courseBaseImpl;
	@PostMapping("orderItems")
	public List<CourseBase> order (Model model) {
		CourseBase courseBase = new CourseBase();
		courseBase.setId(2);
		List<CourseBase> order = courseBaseImpl.order(courseBase);
		model.addAttribute("order", order);
		return order;
	}

}
