package com.hnit.learning_shop.alipay;

	import java.io.IOException;
	import java.text.SimpleDateFormat;
	import java.util.Calendar;

	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alipay.api.AlipayApiException;
	import com.alipay.api.AlipayClient;
	import com.alipay.api.DefaultAlipayClient;
	import com.alipay.api.request.AlipayTradePagePayRequest;
	import com.alipay.api.response.AlipayTradePagePayResponse;

@Controller
public class payOrderServlet{
	
	@RequestMapping("confirm")
	protected void toAlipay(String orderSn,String total, HttpServletResponse response) throws IOException{
		
		 String title = "杨先生";
	        String message = "如有什么建议欢迎留言评论";
	        //生成订单号
	        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
	        //String orderSn = simpleDateFormat.format(Calendar.getInstance().getTime());
	        //向支付宝发送请求
	        //获得初始化的AlipayClient
	        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id,
	                AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key,
	                AlipayConfig.sign_type);
	        //设置请求参数
	        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
	        alipayRequest.setReturnUrl(AlipayConfig.return_url);
	        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
	        //商户订单号，商户网站订单系统中唯一订单号，必填
	        String out_trade_no = orderSn;
	        //付款金额，必填
	        String total_amount = total;
	        //商品名称，必填
	        String subject = title;
	        //商品描述，可空
	        String body = message;
	        alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\"," + "\"total_amount\":\""
	                + total_amount + "\"," + "\"subject\":\"" + subject + "\"," + "\"body\":\"" + body + "\","
	                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	        //若想给BizContent增加其他可选请求参数，以增加自定义超时时间参数timeout_express来举例说明
	        //alipayRequest.setBizContent("{\"out_trade_no\":\""+ out_trade_no +"\"," 
	        //        + "\"total_amount\":\""+ total_amount +"\"," 
	        //        + "\"subject\":\""+ subject +"\"," 
	        //        + "\"body\":\""+ body +"\"," 
	        //        + "\"timeout_express\":\"10m\"," 
	        //        + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
	        //请求参数可查阅【电脑网站支付的API文档-alipay.trade.page.pay-请求参数】章节
	        AlipayTradePagePayResponse alipayResponse = null;
	        try {
	            alipayResponse=alipayClient.pageExecute(alipayRequest);
	            System.out.println(alipayResponse.getBody());
	             //System.out.println(alipayResponse.getMsg());
	        } catch (AlipayApiException e) {
	            e.printStackTrace();
	        }
	        response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().println(alipayResponse.getBody());
	        
			}
	}

