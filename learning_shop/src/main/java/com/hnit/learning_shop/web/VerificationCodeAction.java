package com.hnit.learning_shop.web;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.hnit.learning_shop.Biz.VerificationCode;

@Controller
public class VerificationCodeAction {
	@Resource
	private VerificationCode verificationCode;
	
	@GetMapping("forgetPassword")
	public String verifiationCode (HttpServletRequest request,
			HttpServletResponse response , Model model) throws Exception {
		 verificationCode.service(request, response);
		 return "learning-forget-password-one";
	}
	
	@GetMapping("email")
	public String email (Model model)  {
		 return "learning-forget-password-two";
	}
}
