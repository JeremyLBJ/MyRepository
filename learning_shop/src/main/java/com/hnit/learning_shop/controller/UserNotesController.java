package com.hnit.learning_shop.controller;
import java.util.List;
import javax.annotation.Resource;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.entity.UserNotes;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.impl.UserNotesImpl;
import com.hnit.learning_shop.service.impl.UserServiceImpl;

@RestController
public class UserNotesController {
	@Resource
	private UserNotesImpl userNotesBiz;
	
	@Resource
	private  UserServiceImpl  userServiceImpl;
	
	@GetMapping("/findUserName")
	@ResponseBody
	public Result findUserName (XcUser user) {
		List<XcUser> list = userServiceImpl.userName(user);
		System.out.println("==========");
		if(list == null || list.size() <= 0) {
			return new Result(0);
		}else {
			return new Result(1);
		}
	}
	@GetMapping("/updatePassword")
	@ResponseBody
	public Result updatePaddword(XcUser user) {
		int i = userServiceImpl.newPassword(user);
		if(i == 1) {
			return new Result(1);
		}else {
			return new Result(0,"设置密码失败");
		}
	}

	//@SessionAttribute(name="loginUser",required=false) XcUser user
	@PostMapping("comment")
	@ResponseBody
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
	//根据用户的id号查询所有笔记
	@PostMapping("findAllNotes")
	@ResponseBody
	public Result findAllNotes(XcUser xcUser, Model model) {
		try {
			xcUser.setId(1);
			List<XcUser> findByRid = userNotesBiz.findByRid(xcUser);
			return new Result(1,"成功",findByRid);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙请稍后再试");
		}
		
	}
	//根据点赞数排序
	@PostMapping("orderByAgreeCnt")
	@ResponseBody
	public Result orderByAgreeCnt(@Valid XcUser xcUser) {
		try {
			xcUser.setId(1);
			List<XcUser> orderByAgreeCnt = userNotesBiz.orderByAgreeCnt(xcUser);
			return new Result(1,"成功",orderByAgreeCnt);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙请稍后再试");
		}
	}
	//查询所有的笔记
	@PostMapping("findAllNote")
	@ResponseBody
	public Result findAllNotes () {
		List<XcUser> findAllNotes = userNotesBiz.findAllNotes();
		return new Result (1," ",findAllNotes);
	}
	//根据笔记的id删除笔记
	@PostMapping("deleteById")
	@ResponseBody
	public Result deleteById (@Valid UserNotes userNotes) {
		int i =	userNotesBiz.deleteById(userNotes);
		if( 1 == i ) {
			return new Result(1,"删除成功");
		}else {
			return new Result(0,"删除失败");
		}
	}
	
	//精选
	@PostMapping("choiceness")
	@ResponseBody
	public Result choiceness() {
		List<XcUser> choiceness = userNotesBiz.choiceness();
		return new Result(1,"",choiceness);
	}
}
