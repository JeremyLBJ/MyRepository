package com.lhd.biz;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.lhd.bean.User;
import com.lhd.bean.UserExample;
import com.lhd.dao.UserMapper;
@Service
public class UserBiz {
	
	
	@Resource
	private UserMapper um;
	//登录
	public User login(String name , String password) throws BizException {
		
		
		UserExample example = new UserExample();
		example.createCriteria().andNameEqualTo(name).andPasswordEqualTo(password);
		List<User> list = um.selectByExample(example);
		if(list.size() <= 0) {
			throw new BizException("用户名或密码错误");
		}else {
			return list.get(0);
		}
	}
}
