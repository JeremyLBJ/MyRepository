package com.lhd.web;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.lhd.bean.Article;
import com.lhd.bean.Category;
import com.lhd.biz.ArticleBiz;
import com.lhd.biz.CategoryBiz;

@Controller
public class ArticleAction {
	@Resource
	private ArticleBiz biz;
	
	@Resource
	private CategoryBiz ciz;
	
	@ModelAttribute("cList")
	public List<Category> inti () {
		return	ciz.queryAll();
	}
	//查询首页
	@GetMapping("index")
	public String index (@RequestParam(defaultValue="1")int page ,	Model model ) {
		//最新文章
		model.addAttribute("aList", biz.queryNewArticle(page));
	//	model.addAttribute("cList", ciz.queryAll());
		return "index";
	}
	//分类文章
	@GetMapping("category")
	public String category ( @RequestParam(defaultValue="1")int page , int id , Model model ) {
		model.addAttribute("aList", biz.queryById(page, id));	
		return "category";
	}
	
	//显示文章
	@GetMapping("article")
	public String article (int id , Model model) {
		//通过本次传过来的id进行查询 获取此次id所查到的所有信息
		Article a = biz.Article(id);
		System.out.println(a.getCategoryid()+"::::id");
		//在根据上次获取的数据 点出Categoryid在Category进行查询同一类文章
		List<Article> reaList =	biz.querReal(a.getCategoryid());
		model.addAttribute("raList", reaList);
		//不设置属性名称,则使用小写开头的类名
		model.addAttribute(a);
		return "article";
	}
}
