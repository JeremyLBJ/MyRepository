package com.lhd.biz;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.lhd.bean.Article;
import com.lhd.bean.Comment;
import com.lhd.dao.ArticleMapper;
import com.lhd.dao.CommentMapper;

@Service
public class CommentBiz {

	@Resource
	private CommentMapper mapper;
	
	@Resource
	private ArticleMapper am;

	@Transactional  //事务提交
	public Comment addComment(Comment coms) {
		//添加评论
		mapper.insertSelective(coms);
		Article a = am.selectByPrimaryKey(coms.getArticleid());
		//阅读数
		a.setReadcnt((a.getCommcnt() == null ? 0 : a.getReadcnt()) + 1);
		am.updateByPrimaryKey(a);
		return coms;
	}
}
