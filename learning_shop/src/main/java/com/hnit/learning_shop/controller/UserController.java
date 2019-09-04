package com.hnit.learning_shop.controller;

import java.io.IOException;
import java.util.List;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.Orders;
import com.hnit.learning_shop.entity.Interest;
import com.hnit.learning_shop.entity.SysLog;
import com.hnit.learning_shop.entity.XcRole;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.IndexService;
import com.hnit.learning_shop.service.SysLogService;
import com.hnit.learning_shop.service.UserService;
import com.hnit.learning_shop.service.impl.CourseBaseImpl;
import com.hnit.learning_shop.utils.FtpUtils;
import com.hnit.learning_shop.utils.Picture;
import com.hnit.learning_shop.utils.Data;
import com.hnit.learning_shop.utils.MyUtils;

@Controller
@PropertySource("ftp.properties")
public class UserController {
	@Value("${filePathPre}")
	private String filePathPre;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Autowired
	private UserService userService;
	@Autowired
	private IndexService indexService;
	@Autowired
	private HttpSession session;

	@RequestMapping("/tologin")
	public String tologin() {
		return "learning-sign";
	}

	@RequestMapping("/toreg")
	public String reg() {
		return "learning-reg";
	}

	@RequestMapping("/mypersonal")
	public String personal(Model model) {
		XcUser user = (XcUser) session.getAttribute("user");
		List<CourseBase> courseList = indexService.findAllCourseByUid(user.getId());
		model.addAttribute("courseList", courseList);
		return "learning-personal";
	}

	/**
	 * 退出登录
	 * 
	 * @param session
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response,
			SessionStatus sessionStatus) {
		XcUser xcuser = (XcUser) request.getSession().getAttribute("user");
		// 清空缓存
		if (xcuser != null) {
			request.getSession().removeAttribute("user");
			sessionStatus.setComplete();
		}
		Cookie[] cookies = request.getCookies();
		for (Cookie cookie : cookies) {
			if ("uname".equals(cookie.getName())) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
		return "redirect:index";
	}

	/**
	 * 登录
	 * 
	 * @param model
	 * @param username
	 * @param password
	 * @param session
	 * @param response
	 * @return
	 */
	@RequestMapping("/doLogin")
	public String dologin(Model model, String username, String password, String code, HttpSession session,
			HttpServletResponse response, HttpServletRequest request) {
		XcUser user = null;
		model.addAttribute("username", username);
		model.addAttribute("password", password);

		model.addAttribute("code", code);
		String ccode = (String) request.getSession().getAttribute("checkcode");
		System.out.println(code);
		System.out.println(username + password);
		if (username.trim().equals("") || username == null) {
			model.addAttribute("msg", "账号不能为空");
			return "learning-sign";
		} else if (password.trim().equals("") || password == null) {
			model.addAttribute("msg", "密码不能为空");
			return "learning-sign";
		} else {
			if (code.length() > 10 || code.equalsIgnoreCase(ccode)) {
				System.out.println(username + ":" + password);
				user = userService.login(username, password);
				if (user == null) {
					model.addAttribute("msg", "账号或密码错误");
					return "learning-sign";
				} else {
					if ("on".equals(request.getParameter("check"))) {
						Cookie cookie = new Cookie("uname", user.getUsername());
						// 七天免登陆，单位为秒
						cookie.setMaxAge(60 * 60 * 24 * 7);
						cookie.setPath("/");
						response.addCookie(cookie);
					}
					session.setAttribute("user", user);
					return "redirect:index";
				}
			} else {
				model.addAttribute("msg", "验证码输入不正确");
				return "learning-sign";
			}

		}
	}

	/**
	 * 获取图片验证
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(value = "/checkCode")
	public void checkCode(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置相应类型,告诉浏览器输出的内容为图片
		response.setContentType("image/jpeg");
		// 设置响应头信息，告诉浏览器不要缓存此内容
		response.setHeader("pragma", "no-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expire", 0);
		Picture picture = new Picture();
		try {
			picture.getRandcode(request, response);// 输出图片方法
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 查询所有的用户 未分页
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("findAllUserList")
	@ResponseBody
	public List<XcUser> findAllUserList(Model model) {
		return userService.findAllUserList();
	}

	/**
	 * 去后台首页
	 * 
	 * @return
	 */
	@GetMapping("toAdmin")
	public String toAdmin() {
		return "redirect:/admin/index.jsp";
	}

	@PostMapping("saveUser")
	public String saveUser(XcUser user, @RequestParam("file") MultipartFile file) throws Exception {
		String fileName = UUID.randomUUID() + file.getOriginalFilename();
		user.setUserPic(filePathPre + fileName);
		FtpUtils.sshSftp(file.getBytes(), fileName);
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userService.saveUser(user);
		return "redirect:/admin/user-list.html";
	}

	/**
	 * 注册
	 * 
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
	public String register(Model model, String username, String password, String rpassword, String code, String email,
			HttpSession session, HttpServletResponse response, HttpServletRequest request) {
		model.addAttribute("username", username);
		model.addAttribute("email", email);
		model.addAttribute("code", code);
		model.addAttribute("password", passwordEncoder.encode(password));
		model.addAttribute("rpassword", passwordEncoder.encode(password));
		Data d = new Data();
		System.out.println(d.code);
		System.out.println(username);
		System.out.println(passwordEncoder.encode(password));
		System.out.println(email);
		if (code.equals(d.code)) {
			if (rpassword.equals(password)) {
				XcUser user = userService.selectByUsername(username);
				if (user == null) {
					int result = userService.regUser(username, email, passwordEncoder.encode(password));
					if (result > 0) {
						model.addAttribute("msg", "注册成功！");
						return "learning-sign";
					} else {
						model.addAttribute("msg", "注册失败！");
						return "learning-reg";
					}
				} else {
					model.addAttribute("msg", "该用户名已被注册！");
					return "learning-reg";
				}
			} else {
				model.addAttribute("msg", "两次密码不匹配！");
				return "learning-reg";
			}
		} else {
			model.addAttribute("msg", "验证码错误！");
			return "learning-reg";
		}
	}

	/**
	 * 邮件发送
	 * 
	 * @param model
	 * @param email
	 * @return
	 */
	@RequestMapping("/SendCode")
	@ResponseBody
	public String sendMail(Model model, String email) {
		model.addAttribute("email", email);
		MyUtils mu = new MyUtils();
		XcUser user = userService.selectByEmail(email);
		String res;
		if (user == null) {
			mu.sendMail(email);
			res = "1";
		} else {
			res = "0";
		}
		Data d = new Data();
		System.out.println(d.code);
		return res;
	}

	@RequestMapping("/findUserById/{id}")
	public String findUserById(@PathVariable("id") Integer id, Model model) throws JsonProcessingException {
		XcUser user = userService.findUserById(id);
		model.addAttribute("user", user);
		return "forward:/admin/user-detail.jsp";
	}

	@RequestMapping("/findAllRoleList")
	@ResponseBody
	public List<XcRole> findAllRoleList(Model model) {
		return userService.findAllRoleList();
	}

	@RequestMapping("/saveRole")
	public String saveRole(XcRole role) {
		userService.saveRole(role);
		return "redirect:/admin/role-list.html";
	}

	@RequestMapping("/findRoleById/{id}")
	public String findRoleById(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("role", userService.findRoleById(id));
		return "forward:/admin/role-detail.jsp";
	}

	@RequestMapping("/showRoles2User/{id}")
	public String showRoles2User(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("roleList", userService.findOtherRolesByUid(id));
		model.addAttribute("uid", id);
		return "forward:/admin/showroles.jsp";
	}

	@RequestMapping("/addRole2User")
	public String addRole2User(Integer id, Integer uid) {
		userService.addRole2User(id, uid);
		return "redirect:/admin/user-list.html";
	}

	@Autowired
	SysLogService sysLogService;

	@RequestMapping("/findAllSyslog")
	public String findAllSyslog(Model model) {
		List<SysLog> sysLogList = sysLogService.findAllSyslog();
		model.addAttribute("sysLogList", sysLogList);
		return "forward:/admin/syslog.jsp";
	}
	@Autowired CourseBaseImpl courseBaseImpl;
	@RequestMapping("/orderItems")
	public String order (Model model) {
		List<Orders> order = courseBaseImpl.order();
		model.addAttribute("order", order);
		return "forward:/admin/order-list.jsp";
	}
	
	@RequestMapping("/toCourseVideo")
	public String toCourseVideo() {
		return "learning-course-video(ease)";
	}

}
