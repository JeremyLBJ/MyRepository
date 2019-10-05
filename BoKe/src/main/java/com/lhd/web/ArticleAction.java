package com.lhd.web;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.lhd.bean.Article;
import com.lhd.bean.Category;
import com.lhd.biz.ArticleBiz;
import com.lhd.biz.CategoryBiz;
import com.lhd.biz.CommentBiz;

@Controller
public class ArticleAction {
	@Resource
	private ArticleBiz biz;
	
	@Resource
	private CategoryBiz ciz;
	
	@Resource
	private CommentBiz comm;
	
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
	public String article (@RequestParam(defaultValue="1")int page ,
			int id , Model model) {
		//通过本次传过来的id进行查询 获取此次id所查到的所有信息
		Article a = biz.Article(id);
		PageHelper.startPage(page, 5);
		a.getComments();
		//在根据上次获取的数据 点出Categoryid在Category进行查询同一类文章
		List<Article> reaList =	biz.querReal(a.getCategoryid());
		model.addAttribute("raList", reaList);
		//不设置属性名称,则使用小写开头的类名
		model.addAttribute(a);
		return "article";
	}
	
	@GetMapping("toedit")
	public String toedit() {
		return "articleEdit";
	}
	
	/**
	 * CKEditor 文件上传接口要求返回一段js代码
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@PostMapping("upload")
	public String upload (
			@RequestParam("upload") MultipartFile file,
			String CKEditorFuncNum) throws IllegalStateException, IOException {
		//获取上传文件名字
		String fname = file.getOriginalFilename();
		File dest = new File("d:/blog/upload/"+fname);
		file.transferTo(dest);
		//拼接回调js代码
		String js = "<script type=\"text/javascript\">";
		js +="window.parent.CKEDITOR.tools.callFunction("+ CKEditorFuncNum
				+ ",'upload/'"+fname+"','')";
		js += "</script>";
		return js;
	}
}
