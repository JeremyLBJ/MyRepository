package com.hnit.learning_shop.utils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class OrderUtil {
	public static String genOrderId(){
		//随机生成resorderitem中roid的订单号
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("mmssSSS");
		String str=format.format(date);
		int r=new Random().nextInt(10);
		//如果只是一串数字 在前端传输时可能会损失精度
		return str+r;
	}
	
}
