package com.hnit.learning_shop.controller;

import java.util.Random;
import javax.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.service.impl.MailServiceImpl;
import com.hnit.learning_shop.service.impl.UserServiceImpl;

@RestController
public class SendMailController {
	@Resource
	private MailServiceImpl mailServiceImpl;
	@Resource
	private UserServiceImpl userServiceImpl;
	
	@GetMapping("/sendMail")
	@ResponseBody
	public Result sendMail(ModelAndView model,String email) {
		 Random random = new Random();   
			String sRand="";
	        for (int i=0;i<2;i++)   
	        {   
	            int itmp = random.nextInt(57) + 65;
	            int index = random.nextInt(8) + 1;
	            if(itmp > 90 && itmp < 97) {
	            	itmp = itmp - 7;
	            }
	            char ctmp = (char)itmp;
	            sRand += String.valueOf(ctmp) + String.valueOf(index);
	        }
	        userServiceImpl.sendSimpleEmail(email, "验证码", sRand);
		Result result = new Result(1,"success",sRand);
		return result;
	}

}
