package com.hnit.learning_shop.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.github.pagehelper.PageHelper;
import com.hnit.learning_shop.dao.UserNotesMapper;
import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.UserNotes;
import com.hnit.learning_shop.entity.UserNotesExample;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;

@Service
public class UserNotesImpl {
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
		example.createCriteria().andIdEqualTo(xcUser.getId());
		return xcUserMapper.selectByExample(example);
	}
	
	//根据点赞数进行排序
	public List<XcUser> orderByAgreeCnt (XcUser xcUser) {
		XcUserExample example = new XcUserExample();
		example.createCriteria().andIdEqualTo(xcUser.getId());
		List<XcUser> list = xcUserMapper.selectByExample(example);
		PageHelper.startPage(0, 2);
		return list;
	}
	//精选    查询所有笔记  并按照点赞数排序
	public List<XcUser> choiceness(){
		PageHelper.startPage(1, 3);
		List<XcUser> list = xcUserMapper.selectByExample(null);
		return list;
	}
	
	//查看所有笔记
	public List<XcUser> findAllNotes(){
		return	xcUserMapper.selectByExample(null);
	}

	@Transactional  //事务提交
	public int deleteById( UserNotes userNotes) {
		UserNotesExample example = new UserNotesExample();
		example.createCriteria().andIdEqualTo(userNotes.getId());
		int i = userNotesMapper.deleteByExample(example);
		return i;
	}
}
