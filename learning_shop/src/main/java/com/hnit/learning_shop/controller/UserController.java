package com.hnit.learning_shop.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/tologin")
	   public String login() {
	       return "learning-sign";
	   }
	
	@RequestMapping("/toreg")
	   public String reg() {
	       return "learning-reg";
	   }
	
	@RequestMapping("/mypersonal")
	   public String personal() {
	       return "learning-personal";
	   }
	
	/**
	 *退出登录 
	 * @param session
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/logout")
	   public String logout(HttpSession session,HttpServletRequest request,HttpServletResponse response) {
		XcUser xcuser = (XcUser) request.getSession().getAttribute("user");
		if(xcuser!=null) {
			request.getSession().removeAttribute("user");
		}
		Cookie[] cookies=request.getCookies();
		for(Cookie cookie:cookies){
			if("uname".equals(cookie.getName())){
				cookie.setMaxAge(0);			
				response.addCookie(cookie);
			}
		}
		return "redirect:index";
	   }
	
	/**
	 * 登录
	 * @param model
	 * @param username
	 * @param password
	 * @param session
	 * @param response
	 * @return
	 */
	@RequestMapping("/doLogin")
	public String login(Model model,String username,String password
			,HttpSession session,HttpServletResponse response
			){
		XcUser user=null;
		model.addAttribute("username", username);
		model.addAttribute("password", password);
		if(username.trim().equals("") || username==null){
			model.addAttribute("msg","账号不能为空");
			return "learning-sign";
		}else if(password.trim().equals("") || password==null){
			model.addAttribute("msg","密码不能为空");
			return "learning-sign";
		}else{
			user=userService.login(username, password);
			if(user==null) {
				model.addAttribute("msg","账号或密码错误");
				return "learning-sign";
			}else{
				Cookie cookie=new Cookie("uname",user.getUsername());
				cookie.setMaxAge(30*60);
				cookie.setPath("/");
				response.addCookie(cookie);
				session.setAttribute("user", user);
				return "redirect:index";
			}	
		}
	}
	
}
