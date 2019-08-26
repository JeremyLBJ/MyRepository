package com.hnit.learning_shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hnit.learning_shop.dao.CategoryMapper;
import com.hnit.learning_shop.dao.CategorySubMapper;
import com.hnit.learning_shop.dao.InterestMapper;
import com.hnit.learning_shop.entity.Category;
import com.hnit.learning_shop.entity.CategorySub;
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
	public List<Category> findAllCategory(){
		List<Category> catList = categoryMapper.selectByExample(null);
		return catList;
	}
	public void saveInterest(String[] ids) {
		for(String id : ids){
			Interest inserest = new Interest();
			inserest.setSubCatId(Integer.parseInt(id));
			interestMapper.insert(inserest );
		}
	}
	public List<Interest> findAllInterestByUid(String uid) {
		InterestExample example = new InterestExample();
		example.createCriteria().andUidEqualTo(Integer.parseInt(uid));
		return interestMapper.selectByExample(example);
	}
	public CategorySub findSubById(Integer subCatId) {
		return categorySubMapper.selectByPrimaryKey(subCatId);
	}
}
