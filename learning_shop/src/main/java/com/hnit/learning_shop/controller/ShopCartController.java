package com.hnit.learning_shop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.dao.ShopCartMapper;
import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.Orderitem;
import com.hnit.learning_shop.entity.ShopCart;
import com.hnit.learning_shop.service.ShopCartService;

import net.bytebuddy.implementation.bind.annotation.Default;

@Controller
public class ShopCartController {
	
	
	@Autowired
	private ShopCartService shopCartService;
	@Autowired
	private ShopCartMapper shopCartMapper;
	
	//添加购物车
		@GetMapping("addCart")
		@ResponseBody
		public Result addCart(int id){
			ShopCart shopcart=new ShopCart();
			shopcart.setCid(id);
			shopcart.setUid(1);
			shopCartMapper.insertSelective(shopcart);
			return new Result(1,"成功");
		}
		
		
	//到购物车 需要将当前用户下的购物车显示
	@RequestMapping("tocart")
	public String tocart(Model model,@RequestParam(defaultValue="1")int uid){
		model.addAttribute("shopCartList", shopCartService.queryAllCartByUid(uid));
		return "learning-shopping-order";
	}
	
	@RequestMapping("toshop")
	public String toShop(Model model){
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
	public String saveOrder(String ids,int uid,int sum){
		System.out.println(ids);
		String[] arrIds = ids.split("_");
		return shopCartService.insertOrder(arrIds,uid,sum);
	}
	
	
	//根据订单id查看消费明细
	@RequestMapping("checkOrderItems")
	@ResponseBody
	public List<Orderitem> checkOrderItems(String orderid){
		return shopCartService.queryAllOrderItems(orderid);
	}
	
}
