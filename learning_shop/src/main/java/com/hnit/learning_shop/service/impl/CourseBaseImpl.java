package com.hnit.learning_shop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hnit.learning_shop.dao.OrdersMapper;
import com.hnit.learning_shop.dao.XcUserMapper;
import com.hnit.learning_shop.entity.Orders;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.entity.XcUserExample;

@Service
public class CourseBaseImpl {
	
	@Autowired
	private OrdersMapper ordersMapper;
	
	//查询所有的订单  
	public List<Orders> order () {
		 List<Orders> list = ordersMapper.selectByExample(null);
		return list;
	}

}
