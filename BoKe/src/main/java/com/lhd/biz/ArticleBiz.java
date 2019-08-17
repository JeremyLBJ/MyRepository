package com.lhd.biz;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.lhd.bean.Article;
import com.lhd.bean.ArticleExample;
import com.lhd.dao.ArticleMapper;
@Service
public class ArticleBiz {
	
	@Autowired
	private ArticleMapper am;
	
	/**
	 * 查询最新发布的文章
	 */
	public List<Article> queryNewArticle (int page) {
		ArticleExample example = new ArticleExample();
		example.setOrderByClause("createtime desc");
		PageHelper.startPage(page, 5);
		return	am.selectByExampleWithBLOBs(example);
	}
	
	/**
	 * 分类查询 根据id查询文章
	 */
	public List<Article> queryById (int page , int id) {
		ArticleExample example = new ArticleExample();
		example.createCriteria().andCategoryidEqualTo(id);
		example.setOrderByClause("createtime desc");
		PageHelper.offsetPage(page, 5);
		return	am.selectByExampleWithBLOBs(example);
	}
	
	/**
	 * 查询文章   根据主键id设置阅读数
	 */
	@Transactional   //加入事物注解
	public Article Article (int id) {
		ArticleExample example = new ArticleExample();
		example.createCriteria().andIdEqualTo(id);
		Article a = am.selectByPrimaryKey(id);
		//设置阅读数
		a.setReadcnt((a.getReadcnt() == null ? 0 : a.getReadcnt()) +1);
		//根据id 更新当前阅读数量
		am.updateByPrimaryKeyWithBLOBs(a);
		return a;
		
		
	}

	//文章推送  通过article 表中Categoryid关联Category表中 的id进行查询
	public List<Article> querReal(int id) {
		ArticleExample example = new ArticleExample();
		example.createCriteria().andCategoryidEqualTo(id);
		example.setOrderByClause("createtime desc");
		PageHelper.startPage(1, 10);
		return am.selectByExample(example);
	}

}
