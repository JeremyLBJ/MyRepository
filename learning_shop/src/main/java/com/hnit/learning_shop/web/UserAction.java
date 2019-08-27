package com.hnit.learning_shop.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hnit.learning_shop.Biz.UserServiceBiz;
import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.entity.XcUser;

@RestController
public class UserAction {
	
	@Resource
	
	private UserServiceBiz userServiceBiz;
	
	@GetMapping("findUserName")
	public Result findUserName (XcUser user) {
		List<XcUser> list = userServiceBiz.userName(user);
		if(list == null || list.size() <= 0) {
			return new Result(0,"查无此用户");
		}else {
			return new Result(1);
		}
	}
	@GetMapping("updatePassword")
	public Result updatePaddword(XcUser user) {
		int i = userServiceBiz.newPassword(user);
		if(i == 1) {
			return new Result(1);
		}else {
			return new Result(0,"设置密码失败");
		}
	}
}
