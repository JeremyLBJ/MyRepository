package com.hnit.learning_shop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
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
import com.hnit.learning_shop.util.Picture;

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
		//清空缓存
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
	public String login(Model model,String username,String password,String code
			,HttpSession session,HttpServletResponse response,HttpServletRequest request
			){
		XcUser user=null;
		model.addAttribute("username", username);
		model.addAttribute("password", password);
		model.addAttribute("code", code);
		String ccode=(String) request.getSession().getAttribute("checkcode");
		System.out.println(code);
		System.out.println(ccode);
		if(username.trim().equals("") || username==null){
			model.addAttribute("msg","账号不能为空");
			return "learning-sign";
		}else if(password.trim().equals("") || password==null){
			model.addAttribute("msg","密码不能为空");
			return "learning-sign";
		}else{
			if(code.equalsIgnoreCase(ccode)){
				user=userService.login(username, password);
				if(user==null) {
					model.addAttribute("msg","账号或密码错误");
					return "learning-sign";
				}else{
					if("on".equals(request.getParameter("check"))){
						Cookie cookie=new Cookie("uname",user.getUsername());
						//七天免登陆，单位为秒
						cookie.setMaxAge(60 * 60 * 24 * 7);
						cookie.setPath("/");
						response.addCookie(cookie);
					}
					session.setAttribute("user", user);
					return "redirect:index";
				}	
			}else{
				model.addAttribute("msg","验证码输入不正确");
				return "learning-sign";
			}
			
		}
	}
	
	/**
	 * 获取图片验证
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(value="/checkCode")
	public void checkCode(HttpServletRequest request, HttpServletResponse response)
	  throws ServletException, IOException {
		//设置相应类型,告诉浏览器输出的内容为图片
		response.setContentType("image/jpeg");
		//设置响应头信息，告诉浏览器不要缓存此内容
		response.setHeader("pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expire", 0);
		Picture picture = new Picture();
		try {
			picture.getRandcode(request, response);//输出图片方法
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
