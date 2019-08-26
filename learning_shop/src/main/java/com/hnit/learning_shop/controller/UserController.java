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
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.UserService;
import com.hnit.learning_shop.utils.Picture;
import com.hnit.learning_shop.utils.Data;
import com.hnit.learning_shop.utils.MyUtils;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/tologin")
	   public String tologin() {
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
	public String dologin(Model model,String username,String password,String code
			,HttpSession session,HttpServletResponse response,HttpServletRequest request
			){
		XcUser user=null;
		model.addAttribute("username", username);
		model.addAttribute("password", password);
		model.addAttribute("code", code);
		String ccode=(String) request.getSession().getAttribute("checkcode");
		System.out.println(code);
		System.out.println(username+password);
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
	
	/**
	 * 注册
	 * @param model
	 * @param username
	 * @param password
	 * @param rpassword
	 * @param code
	 * @param email
	 * @param session
	 * @param response
	 * @param request
	 * @return
	 */
	@RequestMapping("/doReg")
	public String register(Model model,String username,String password,String rpassword,String code,String email
			,HttpSession session,HttpServletResponse response,HttpServletRequest request){
		XcUser user=null;
		model.addAttribute("username", username);
		model.addAttribute("email", email);
		model.addAttribute("code", code);
		model.addAttribute("password", password);
		model.addAttribute("rpassword", rpassword);
		Data d=new Data();
		System.out.println(d.code);
		System.out.println(username);
		System.out.println(password);
		System.out.println(email);
		if(code.equals(d.code)){
			if(rpassword.equals(password)){
				int result=userService.regUser(username, email, password);
				if(result>0){
					model.addAttribute("msg","注册成功！");
					return "learning-sign";
				}else{
					model.addAttribute("msg","注册失败！");
					return "learning-reg";
				}
			}else{
				model.addAttribute("msg","两次密码不匹配！");
				return "learning-reg";
			}		
		}else{
			model.addAttribute("msg","验证码错误！");
			return "learning-reg";
		}	
	}
	
	/**
	 * 邮件发送
	 * @param model
	 * @param email
	 */
	@RequestMapping("/SendCode")
	@ResponseBody
	public void sendMail(Model model,String email){
		model.addAttribute("email", email);
		MyUtils mu=new MyUtils();
		mu.sendMail(email);			
		Data d=new Data();
		System.out.println(d.code);
	}
	
}
