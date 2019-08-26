package com.hnit.learning_shop.web;

import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hnit.learning_shop.Biz.MailServiceImpl;

@Controller
public class SendMailAction {
	@Resource
	private MailServiceImpl mailServiceImpl;
	
	@GetMapping("sendMail")
	public String sendMail(Model model) {
		System.out.println("===========");
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
	        System.out.println(sRand+"::::::::::sRand");
	        model.addAttribute("mail", sRand);
		mailServiceImpl.sendSimpleEmail("1447076355", "驗證碼", sRand);
		return "learning-forget-password-two";
	}

}
