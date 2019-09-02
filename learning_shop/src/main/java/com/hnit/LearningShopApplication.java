package com.hnit;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
@MapperScan("com.hnit.learning_shop.dao")
public class LearningShopApplication {

	public static void main(String[] args) {
		SpringApplication.run(LearningShopApplication.class, args);
	}

}
