package com.hnit;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication

@MapperScan("com.hnit")
public class LearningShopApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(LearningShopApplication.class, args);
	}
	
	
	
	
}
