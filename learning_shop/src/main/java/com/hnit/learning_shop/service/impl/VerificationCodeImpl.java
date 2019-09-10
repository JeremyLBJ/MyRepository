package com.hnit.learning_shop.service.impl;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
@Service
public class VerificationCodeImpl extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 private int lineSize = 40;//干扰线数量
	 private  Random random = new Random();
	 private  int width=100, height=18; 
	
	 @SuppressWarnings("unused")
	private static final String CONTENT_TYPE = "text/html; charset=UTF-8";   
	    //设置字母的大小,大小   
	    private Font mFont = new Font("Times New Roman", Font.PLAIN, 17);
	    public void init() throws ServletException   
	    {   
	        super.init();   
	    }   
	    Color getRandColor(int fc,int bc)   
	    {   
	    	if(fc > 255)
	    		   fc = 255;
	    		  if(bc > 255)
	    		   bc = 255;
	    		  int r = fc + random.nextInt(bc-fc-16);
	    		  int g = fc + random.nextInt(bc-fc-14);
	    		  int b = fc + random.nextInt(bc-fc-18);
	    		  return new Color(r,g,b); 
	    }
	    
	    public void service(HttpServletRequest request, HttpServletResponse response)
	    		throws ServletException, IOException   
	    {   
	        response.setHeader("Pragma","No-cache");   
	        response.setHeader("Cache-Control","no-cache");   
	        response.setDateHeader("Expires", 0);   
	        //表明生成的响应是图片   
	        response.setContentType("image/jpeg");   
	           
	        int width=100, height=18;   
	        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);   
	     
	        Graphics g = image.getGraphics(); 
	  
	        g.setColor(getRandColor(160, 200));   
	        g.fillRect(1, 1, width-1, height-1);   
	        g.setColor(new Color(random.nextInt(101),random.nextInt(111),random.nextInt(121)));
	        g.translate(random.nextInt(3), random.nextInt(3));
	        g.drawRect(0, 0, width-1, height-1);   
	        g.setFont(mFont);   
	        g.setColor(getRandColor(160,200));  
	        
	        //生成随机数,并将随机数字转换为字母   
	        String sRand="";
	        for (int i=0;i<2;i++)   
	        {   
	            int itmp = random.nextInt(57) + 65;
	            int index = random.nextInt(8) + 1;
	            if(itmp > 90 && itmp < 97) {
	            	itmp = itmp - 7;
	            }
	            char ctmp = (char)itmp;
	            sRand += String.valueOf(ctmp) + String.valueOf(index);
	        }
	        System.out.println(sRand+":::Srand");
	        HttpSession session = request.getSession(true);  
	        session.setAttribute("rand",sRand);   
	        g.dispose();
	    }
}
