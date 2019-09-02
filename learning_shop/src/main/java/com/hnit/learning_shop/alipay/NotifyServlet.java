package com.hnit.learning_shop.alipay;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotifyServlet {
	
	@RequestMapping("notify")
    public void tonotify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("接收到支付宝的异步通知请求——");
        Map<String,String[]> parameterMap=request.getParameterMap();
        System.out.println(parameterMap);
        //成功处理后返回success
        response.getWriter().write("success");
    }
}