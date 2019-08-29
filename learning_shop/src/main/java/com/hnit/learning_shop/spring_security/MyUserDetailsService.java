package com.hnit.learning_shop.spring_security;

import com.hnit.learning_shop.entity.XcRole;
import com.hnit.learning_shop.entity.XcUser;
import com.hnit.learning_shop.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Component
public class MyUserDetailsService implements UserDetailsService {
	
  @Autowired
  private HttpServletRequest request;
  @Autowired
  private PasswordEncoder passwordEncoder;
  private Logger logger = LoggerFactory.getLogger(getClass());
  @Resource
  private UserService userService;
  @Override
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    logger.info("用户的用户名: {}", username);


    // TODO 根据用户名，查找到对应的密码，与权限
    XcUser userInfo = userService.selectByUsername(username);
    if(userInfo == null){
    	return null;
    }
    request.getSession().setAttribute("user", userInfo);
    //String password = passwordEncoder.encode(userInfo.getPassword());

    // 封装用户信息，并返回。参数分别是：用户名，密码，用户权限
    //User user = new User(username, password,getAuthority(userInfo.getRoles()));
    //AuthorityUtils.commaSeparatedStringToAuthorityList("admin")
    User user = new User(username,userInfo.getPassword(),true,true,true,true,getAuthority(userInfo.getRoleList()));
    return user;
 }

 public List<SimpleGrantedAuthority> getAuthority(Set<XcRole> roles){
    List<SimpleGrantedAuthority> list = new ArrayList<>();
   for (XcRole role: roles) {
     list.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName()));
     System.out.println("ROLE_" + role.getRoleName());
   }
   return list;
 }
}