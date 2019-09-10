package com.hnit.learning_shop.controller;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnit.learning_shop.service.impl.VerificationCodeImpl;

@Controller
public class VerificationCodeController {
	@Resource
	
	private VerificationCodeImpl verificationCode;
	
	//验证码
	@GetMapping("images")
	public String verifiationCode (HttpServletRequest request,
			HttpServletResponse response , Model model) throws Exception {
		 verificationCode.service(request, response);
		 return "";
	}
	
	@GetMapping("/inputCode")
	@ResponseBody
	public int check(String code ,HttpServletRequest request) {
		String codes = (String)	request.getSession().getAttribute("checkcode");
		if(code.equals(codes)) {
			return 1;
		}else {
			return 0;
		}
	}
	@GetMapping("/learingOne")
	public String verifiation() {
		return "learning-forget-password-one";
	}
	
	
	@GetMapping("/learingTwo")
	public String email (Model model)  {
		 return "learning-forget-password-two";
	}
	
	@GetMapping("/learingThree")
	public String emails ()  {
		 return "learning-forget-password-three";
	}
	
	@GetMapping("/OK")
	public String OK () {
		return "learning-forget-password-ok";
	}
	
	@GetMapping("/index")
	public String index () {
		return "redirect:/index/toIndex";
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
