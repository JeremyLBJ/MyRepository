package com.hnit.learning_shop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnit.learning_shop.dao.ShopCartMapper;
import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.Orderitem;
import com.hnit.learning_shop.entity.ShopCart;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.CourseService;
import com.hnit.learning_shop.service.ShopCartService;


@Controller
public class ShopCartController {
	
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private ShopCartService shopCartService;
	@Autowired
	private ShopCartMapper shopCartMapper;
	
	@Autowired
	private CourseService courseService;
	
	//添加购物车
		@GetMapping("addCart")
		public String addCart(int id){
			XcUser user = (XcUser) request.getSession().getAttribute("user");
			ShopCart shopcart=new ShopCart();
			shopcart.setCid(id);
			shopcart.setUid(user.getId());
			shopCartMapper.insertSelective(shopcart);
			return "redirect:tocart";
		}
		
		
	//到购物车 需要将当前用户下的购物车显示
	@RequestMapping("tocart")
	public String tocart(Model model){
		XcUser user = (XcUser) request.getSession().getAttribute("user");
		model.addAttribute("shopCartList", shopCartService.queryAllCartByUid(user.getId()));
		return "learning-shopping-order";
	}
	
	@RequestMapping("toshop")
	public String toShop(Model model){
		return "learning-order";
	}

	@RequestMapping("pay")
	public String pay(int id,Model model){
		model.addAttribute("course",courseService.findById(id));
		return "learning-order";
	}
	
	@RequestMapping("topay")
	public String topay(){
		return "learning-pay";
	}
	
	
	@RequestMapping("queryShopCourse")
	@ResponseBody
	public List<CourseBase> QueryShopCourse(String ids){
		String[] arrIds = ids.split("_");
		return shopCartService.queryShopByid(arrIds);
	}
	
	//提交订单   并插入订单明细
	@RequestMapping("saveOrder")
	@ResponseBody
	public String saveOrder(String ids,double sum){
		XcUser user = (XcUser) request.getSession().getAttribute("user");
		System.out.println(ids);
		String[] arrIds = ids.split("_");
		return shopCartService.insertOrder(arrIds,user.getId(),sum);
	}
	
	
	//根据订单id查看消费明细
	@RequestMapping("checkOrderItems")
	@ResponseBody
	public List<Orderitem> checkOrderItems(String orderid){
		return shopCartService.queryAllOrderItems(orderid);
	}
	
}
