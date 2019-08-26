package com.hnit;

import java.io.FileInputStream;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.hnit.learning_shop.utils.FtpUtils;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LearningShopApplicationTests {

	@Test
	public void contextLoads() throws Exception {
		FileInputStream fileInputStream = new FileInputStream("D:/代理.png");
		
		byte[] bytes =new byte[fileInputStream.available()];
		fileInputStream.read(bytes);
		FtpUtils.sshSftp(bytes, "D:/代理.jpg");
		fileInputStream.close();
	}

}
