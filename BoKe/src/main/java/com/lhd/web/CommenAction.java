package com.lhd.web;

import javax.annotation.Resource;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;
import com.lhd.bean.Comment;
import com.lhd.bean.Result;
import com.lhd.bean.User;
import com.lhd.biz.CommentBiz;

@RestController
public class CommenAction {
	
	@Resource
	private CommentBiz ciz;
	
	
	@PostMapping("comment")
	public Result commnet(@Valid Comment coms, Model model , Errors errors,
			@SessionAttribute(name="loginUser",required=false) User user) {
		if(user == null) {
			return new Result(0,"请先登录系统");
		}
		//设置评论人的id
		coms.setCreateby(user.getId());
		if(errors.hasErrors()) {
			return new Result(-1,"评论失败",errors.getAllErrors());
		}
		try {
			ciz.addComment(coms);
			//model.addAttribute("mList", list);
			return new Result(1,"评论成功",coms);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙");
		}
	}
}
