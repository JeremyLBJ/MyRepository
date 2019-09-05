package com.hnit.learning_shop.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hnit.learning_shop.service.impl.VerificationCodeImpl;

@Controller
public class VerificationCodeController {
	@Resource
	
	private VerificationCodeImpl verificationCode;
	
	//验证码
	@GetMapping("learingOne")
	public String verifiationCode (HttpServletRequest request,
			HttpServletResponse response , Model model) throws Exception {
		 verificationCode.service(request, response);
		 return "learning-forget-password-one";
	}
	
	@GetMapping("learingTwo")
	public String email (Model model)  {
		 return "learning-forget-password-two";
	}
	
	@GetMapping("learingThree")
	public String emails ()  {
		 return "learning-forget-password-three";
	}
	
	@GetMapping("OK")
	public String OK () {
		return "learning-forget-password-ok";
	}
	
	@GetMapping("index")
	public String index () {
		return "learning-index";
	}
	
	@GetMapping("video")
	public String video() {
		return "learning-course-video";
	}
	
	@GetMapping("orderList")
	public String order() {
		return "order-list";
	}
}
