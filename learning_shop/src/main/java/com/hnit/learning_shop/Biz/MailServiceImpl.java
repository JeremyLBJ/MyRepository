package com.hnit.learning_shop.Biz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

@Service
public class MailServiceImpl {
	@Autowired
	private JavaMailSender javaMailSender;
	
	//邮箱发送
	@Value("${mail.fromMail.addr}")
	private String from;
	public void sendSimpleEmail(String to,String subject,String text){
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom(from);
		mailMessage.setTo(to);
		mailMessage.setSubject(subject);
		mailMessage.setText(text);
		javaMailSender.send(mailMessage);
	}
}
