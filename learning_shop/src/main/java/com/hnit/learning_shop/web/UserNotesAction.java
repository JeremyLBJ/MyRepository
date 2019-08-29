package com.hnit.learning_shop.web;
import java.util.List;
import javax.annotation.Resource;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import com.hnit.learning_shop.Biz.UserNotesBiz;
import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.entity.UserNotes;
import com.hnit.learning_shop.entity.XcUser;

@RestController
public class UserNotesAction {
	@Resource
	private UserNotesBiz userNotesBiz;
	//@SessionAttribute(name="loginUser",required=false) XcUser user
	@PostMapping("comment")
	public Result commnet(@Valid UserNotes userNotes, Model model , Errors errors
			) {
		/*if(user == null) {
			return new Result(0,"请先登录系统");
		}
		//设置评论人的id
		*/
		/*userNotes.setId(1);*/
		if(errors.hasErrors()) {
			return new Result(-1,"添加失败",errors.getAllErrors());
		}
		try {
			userNotesBiz.addComment(userNotes);
			return new Result(1,"添加成功",userNotes);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙请稍后再试");
		}
	}
	//根据用户的id号查询所有笔记
	@PostMapping("findAllNotes")
	public Result findAllNotes(XcUser xcUser, Model model) {
		try {
			xcUser.setRid(1);
			List<XcUser> findByRid = userNotesBiz.findByRid(xcUser);
			return new Result(1,"成功",findByRid);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙请稍后再试");
		}
	}
	//根据点赞数排序
	@PostMapping("orderByAgreeCnt")
	public Result orderByAgreeCnt(@Valid XcUser xcUser) {
		try {
			xcUser.setRid(1);
			List<XcUser> orderByAgreeCnt = userNotesBiz.orderByAgreeCnt(xcUser);
			return new Result(1,"成功",orderByAgreeCnt);
		}catch (RuntimeException e) {
			e.printStackTrace();
			return new Result(0,"系统繁忙请稍后再试");
		}
	}
	//查询所有的笔记
	@PostMapping("findAllNote")
	public Result findAllNotes () {
		List<XcUser> findAllNotes = userNotesBiz.findAllNotes();
		return new Result (1," ",findAllNotes);
	}
	//根据笔记的id删除笔记
	@PostMapping("deleteById")
	public Result deleteById (@Valid UserNotes userNotes) {
		int i =	userNotesBiz.deleteById(userNotes);
		if( 1 == i ) {
			return new Result(1,"删除成功");
		}else {
			return new Result(0,"删除失败");
		}
	}
	
	//精选
	@PostMapping("choiceness")
	public Result choiceness() {
		List<XcUser> choiceness = userNotesBiz.choiceness();
		return new Result(1,"",choiceness);
	}
}
