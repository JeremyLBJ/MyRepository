package com.hnit.learning_shop.web;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.entity.UserNotes;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.UserNotesBiz;

@RestController
public class UserNotesAction {
	@Resource
	private UserNotesBiz userNotesBiz;
	@PostMapping("comment")
	public Result commnet(@Valid UserNotes userNotes, Model model , Errors errors
			) {
		/*if(user == null) {
			return new Result(0,"请先登录系统");
		}
		//设置评论人的id
		*/
		/*userNotes.setId(1);*/
		if(errors.hasErrors()) {
			return new Result(-1,"添加失败",errors.getAllErrors());
		}
		try {
			userNotesBiz.addComment(userNotes);
			return new Result(1,"添加成功",userNotes);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙请稍后再试");
		}
	}
	@PostMapping("findAllNotes")
	public Result findAllNotes(@Valid XcUser xcUser, Model model) {
		try {
			xcUser.setRid(1);
			List<XcUser> findByRid = userNotesBiz.findByRid(xcUser);
			return new Result(1,"成功",findByRid);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙请稍后再试");
		}
	}

}
