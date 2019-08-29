package com.hnit.learning_shop.service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hnit.learning_shop.common.Result;
import com.hnit.learning_shop.dao.CourseBaseMapper;
import com.hnit.learning_shop.dao.OrderitemMapper;
import com.hnit.learning_shop.dao.OrdersMapper;
import com.hnit.learning_shop.dao.ShopCartMapper;
import com.hnit.learning_shop.entity.CourseBase;
import com.hnit.learning_shop.entity.Orderitem;
import com.hnit.learning_shop.entity.OrderitemExample;
import com.hnit.learning_shop.entity.Orders;
import com.hnit.learning_shop.entity.ShopCart;
import com.hnit.learning_shop.entity.ShopCartExample;
import com.hnit.learning_shop.utils.OrderUtil;

@Service
public class ShopCartService {

	@Autowired
	private ShopCartMapper shopCartMapper;
	
	@Autowired
	private CourseBaseMapper courseBaseMapper;

	@Autowired
	private OrderitemMapper orderItemMapper;
	@Autowired
	private OrdersMapper ordersMapper;
	
	
	
	
	
	
	//根据用户id查询此用户下的购物车信息
	public List<ShopCart> queryAllCartByUid(int uid){
		ShopCartExample example=new ShopCartExample();
		example.createCriteria().andUidEqualTo(uid);
		return shopCartMapper.selectByExample(example);
	}
	
	
	//根据指定课程id进行查询
	public List<CourseBase> queryShopByid(String[] ids){
		if(ids==null||ids.length<=0){
			return null;
		}
		List<CourseBase> list=new ArrayList<>();
		for(int i=0;i<ids.length;i++){
			CourseBase  po=courseBaseMapper.selectByPrimaryKey(Integer.valueOf(ids[i]));
			list.add(po);
		}
		return list;
		
	}
	
	//插入订单中    并把订单号返回  生产订单后需要将购物车中商品删除（条件根据用户id和课程id）
	public String insertOrder(String[] ids,int uid,int sum){
		
		
		String orderid=OrderUtil.genOrderId();
		if(ids==null||ids.length<=0){
			return null;
		}
		Orders order=new Orders();
		
		order.setPaymoney(Double.valueOf(sum+""));
		order.setUid(uid);
		System.out.println(OrderUtil.genOrderId());
		order.setId(Integer.parseInt(orderid));
		ordersMapper.insert(order);
		
		//并插入订单明细中
		Orderitem orderItem=null;
		for(int i=0;i<ids.length;i++){
		 orderItem=new Orderitem();
		 orderItem.setCid(Integer.parseInt(ids[i]));
		 orderItem.setOid(Integer.parseInt(orderid));
		 orderItemMapper.insertSelective(orderItem);
		}
		
		
		//删除购物车中商品
		ShopCartExample example=null;
		for(int i=0;i<ids.length;i++){
			example=new ShopCartExample();
			example.createCriteria().andCidEqualTo(Integer.valueOf(ids[i])).andUidEqualTo(uid);
			shopCartMapper.deleteByExample(example);
		}
		
		return orderid;
	}
	
	
	//根据订单编号查询订单的消费明细
	public List<Orderitem> queryAllOrderItems(String orderid){
		OrderitemExample example=new OrderitemExample();
		example.createCriteria().andOidEqualTo(Integer.valueOf(orderid));
		return orderItemMapper.selectByExample(example);
	}
	
	
	
}
