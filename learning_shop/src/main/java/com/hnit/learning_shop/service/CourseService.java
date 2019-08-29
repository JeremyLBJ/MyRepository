package com.hnit.learning_shop.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnit.learning_shop.dao.CategoryMapper;
import com.hnit.learning_shop.dao.CategorySubMapper;
import com.hnit.learning_shop.dao.CourseBaseMapper;
import com.hnit.learning_shop.dao.CourseCommentMapper;
import com.hnit.learning_shop.entity.Category;
import com.hnit.learning_shop.entity.CategorySub;
import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.CourseBaseExample;
import com.hnit.learning_shop.entity.CourseComment;
import com.hnit.learning_shop.entity.CourseCommentExample;

@Service
public class CourseService {

	
	@Autowired
	private CategoryMapper categoryMapper;
	
	@Autowired
	private CategorySubMapper categorySubMapper;
	
	@Autowired
	private CourseBaseMapper courseBaseMapper;
	
	@Resource
	private CourseCommentMapper courseCommentMapper;
	//查询所有的课程（一级）分类
	public List<Category> queryAllCategory(){
		return categoryMapper.selectByExample(null);
	}
	
	//查询所有（二级）分类
	public List<CategorySub> queryAllCategorySub(){
		return categorySubMapper.selectByExample(null);
	}
	
	//根据主键查询一级分类 并关联二级分类
	public Category queryCategory(int id){
		return categoryMapper.selectByPrimaryKey(id);
	}
	
	//查询所有的课程
	public List<CourseBase> queryAllCourse(){
		CourseBaseExample example=new CourseBaseExample();
		example.setOrderByClause("start_time desc");
		return courseBaseMapper.selectByExample(example);
	}
	
	//根据难度和指定id查询课程
	public List<CourseBase> queryCourseByCatidAndGrade(String grade, int catid){
		CourseBaseExample courseBaseExample=new CourseBaseExample();
		courseBaseExample.createCriteria().andGradeEqualTo(grade).andCatidEqualTo(catid);
		return courseBaseMapper.selectByExample(courseBaseExample); 
	}
	
	
	//根据二级分类 关联课程
	public CategorySub queryCategorySubById(int id){
		return categorySubMapper.selectByPrimaryKey(id);
	}

	public void saveComment(CourseComment comment) {
		comment.setPublishTime(new Date());
		comment.setUid(1);
		comment.setCid(1);
		courseCommentMapper.insert(comment);
	}

	public List<CourseComment> getCommentList(int cid, int uid) {
		CourseCommentExample example = new CourseCommentExample();
		example.setOrderByClause("publish_time desc");
		example.createCriteria().andCidEqualTo(cid).andUidEqualTo(uid);
		return courseCommentMapper.selectByExample(example);
	}
	
}
