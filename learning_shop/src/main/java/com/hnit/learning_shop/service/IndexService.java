package com.hnit.learning_shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.hnit.learning_shop.dao.CategoryMapper;
import com.hnit.learning_shop.dao.CategorySubMapper;
import com.hnit.learning_shop.dao.CourseBaseMapper;
import com.hnit.learning_shop.dao.InterestMapper;
import com.hnit.learning_shop.entity.Category;
import com.hnit.learning_shop.entity.CategorySub;
import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.CourseBaseExample;
import com.hnit.learning_shop.entity.Interest;
import com.hnit.learning_shop.entity.InterestExample;

@Service
@Transactional
public class IndexService {
	@Autowired
	private CategoryMapper categoryMapper;
	@Autowired
	private InterestMapper interestMapper;
	@Autowired
	private CategorySubMapper categorySubMapper;
	@Autowired
	private CourseBaseMapper courseBaseMapper;
	
	
	public List<Category> findAllCategory(){
		List<Category> catList = categoryMapper.selectByExample(null);
		return catList;
	}
	public void saveInterest(String[] ids, Integer uid) {
		for(String id : ids){
			Interest inserest = new Interest();
			inserest.setSubCatId(Integer.parseInt(id));
			inserest.setUid(uid);
			interestMapper.insert(inserest );
		}
	}
	public List<Interest> findAllInterestByUid(Integer uid) {
		InterestExample example = new InterestExample();
		example.createCriteria().andUidEqualTo(uid);
		return interestMapper.selectByExample(example);
	}
	
	public CategorySub findSubById(Integer subCatId) {
		return categorySubMapper.selectByPrimaryKey(subCatId);
	}
	public List<CategorySub> findAllSub() {
		return categorySubMapper.selectByExample(null);
	}
	public void updateInterest(String[] ids, Integer uid) {
		InterestExample example = new InterestExample();
		example.createCriteria().andUidEqualTo(uid);
		interestMapper.deleteByExample(example);
		saveInterest(ids, uid);
	}
	public List<CourseBase> findRecommend() {
		CourseBaseExample example = new CourseBaseExample();
		example.setOrderByClause("learncount desc");
		PageHelper.startPage(0, 10);
		return courseBaseMapper.selectByExample(example);
	}
	public List<CourseBase> findAllCourseByUid(Integer uid) {
		return courseBaseMapper.findAllCourseByUid(uid);
	}
}
