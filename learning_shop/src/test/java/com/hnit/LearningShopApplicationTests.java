package com.hnit;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.hnit.learning_shop.service.MailServiceImpl;
import com.hnit.learning_shop.utils.FtpUtils;

/*@RunWith(SpringRunner.class)
@SpringBootTest*/
public class LearningShopApplicationTests {
/*	@Resource
	private MailServiceImpl mailserviceimpl;

	@Test
	public void contextLoads() throws Exception {
		FileInputStream fileInputStream = new FileInputStream("D:/代理.png");
		byte[] bytes =new byte[fileInputStream.available()];
		fileInputStream.read(bytes);
		FtpUtils.sshSftp(bytes, "代理.jpg");
		fileInputStream.close();
	}
	
	@Test
	public void testMail() {
		
		mailserviceimpl.sendSimpleEmail("1447076355@qq.com", "12313", "116546");
	}
	
	
	@Test
	public void test() throws Exception{
		ObjectMapper objectMapper = new ObjectMapper();
		Gson gson = new Gson();
		Map<String, Map> map =new HashMap<String, Map>();
		Map<String, String> map1 =new HashMap<String, String>();
		Map<String, Map> map2 =new HashMap<String, Map>();
		map1.put("1", map1.put("2", "warn"));
		map1.put("3", "warn");
		map2.put("4", map1);
		
		map.put("5", map1);
		map.put("6", map2);
		map2.put("warn", map1);
		map.put("7", map2);
		String jsonMap = objectMapper.writeValueAsString(map);
		//String jsonMap = gson.toJson(map);
		System.out.println(map);
		System.out.println(jsonMap);
		
		System.out.println(jsonMap.indexOf("\"warn\":"));
		int indexOf = jsonMap.indexOf("\"warn\":");
		System.out.println(jsonMap.substring(indexOf));
		int leftCount = 0;
		int rightCount = 0;
		int end = 0;
		for(int i = indexOf;i<jsonMap.length();i++){
			if(jsonMap.charAt(i) == '{'){
				leftCount++;
			}
			if(jsonMap.charAt(i) == '}'){
				rightCount++;
			}
			if(leftCount == rightCount && leftCount != 0){
				end = i;
				break;
			}
		}
		
		String substring = jsonMap.substring(indexOf,end+1);
		
		System.out.println(end);
		System.out.println(substring);
		//Map destMap = gson.fromJson(substring, Map.class);
		Map readValue = objectMapper.readValue(substring, Map.class);
	}*/

}
