package com.hnit.learning_shop.Biz;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hnit.learning_shop.dao.UserNotesMapper;
import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.UserNotes;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;

@Service
public class UserNotesBiz {
	@Autowired
	private UserNotesMapper userNotesMapper;
	@Autowired
	private XcUserMapper xcUserMapper;
	
	@Transactional  //事务提交
	public UserNotes addComment (UserNotes userNotes) {
		userNotes.setUid(1);
		
		userNotesMapper.insertSelective(userNotes);
		return userNotes;
	}
	
	//根据用户id查询笔记信息
	public List<XcUser> findByRid (XcUser xcUser) {
		XcUserExample example = new XcUserExample();
		example.createCriteria().andRidEqualTo(xcUser.getRid());
		/*example.setOrderByClause("createtime desc");*/
		/*PageHelper.startPage(1, 5);*/
		return xcUserMapper.selectByExample(example);
	}
	
}
