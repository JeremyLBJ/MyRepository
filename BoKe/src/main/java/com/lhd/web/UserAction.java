package com.lhd.web;

import javax.annotation.Resource;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.lhd.bean.Result;
import com.lhd.bean.User;
import com.lhd.biz.BizException;
import com.lhd.biz.UserBiz;

@RestController
@SessionAttributes("loginUser")
public class UserAction {
	
	@Resource
	private UserBiz uiz;
	
	@PostMapping("login")
	public Result login (String name , String password , Model model) {
		User user;
		try {
			user = uiz.login(name, password);
			model.addAttribute("loginUser", user);
			return new Result(1,"OK", user);
		} catch (BizException e) {
			return new Result(0, e.getMessage());
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙");
		}
	}
}
