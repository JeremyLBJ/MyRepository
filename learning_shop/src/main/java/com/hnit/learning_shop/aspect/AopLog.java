package com.hnit.learning_shop.aspect;


import com.hnit.learning_shop.entity.SysLog;
import com.hnit.learning_shop.service.SysLogService;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Date;

@Component
@Aspect
public class AopLog {

    private Date visitTime;
    private Method method;
    private Class clazz;
    @Autowired
    private HttpServletRequest request;

    @Autowired
    private SysLogService sysLogService;

    @Before(value = "execution(* com.hnit.learning_shop.controller.*.*(..))")
    public void doBefore(JoinPoint jp) throws NoSuchMethodException {
        visitTime = new Date();
        clazz = jp.getTarget().getClass();
        String methodName = jp.getSignature().getName();
        
        Method[] methods = clazz.getMethods();
        for(Method m : methods){
        	if(m.getName().equals(methodName)){
        		method = m;
        		break;
        	}
        }
        
        
    }

    @After(value = "execution(* com.hnit.learning_shop.controller.*.*(..))")
    public void doAfter(JoinPoint jp) throws NoSuchMethodException {
        long time = new Date().getTime() - visitTime.getTime();
        String url = "";
        if(clazz != null && method != null && clazz != AopLog.class){
        	
            RequestMapping clazzAnnotation = (RequestMapping) clazz.getAnnotation(RequestMapping.class);
            
            if(clazzAnnotation != null){
                String[] clazzValue = clazzAnnotation.value();
                RequestMapping methodAnnotation = method.getAnnotation(RequestMapping.class);
                if (methodAnnotation != null){
                    String[] methodValue = methodAnnotation.value();
                    if(methodValue == null || methodValue.length == 0){
                    	url = clazzValue[0];
                    }else{
                    	url = clazzValue[0] + methodValue[0];
                    }

                    String ip ="host:" + request.getRemoteHost() + "port:" +request.getRemotePort();
                    User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
                    String username = user.getUsername();

                    SysLog sysLog = new SysLog();
                    sysLog.setExecutionTime(time);
                    sysLog.setIp(ip);
                    sysLog.setMethod("[类名] "+ clazz.getName() + "[方法名] " + method.getName());
                    sysLog.setUrl(url);
                    sysLog.setVisitTime(visitTime);
                    sysLog.setUsername(username);

                    sysLogService.save(sysLog);
                }
            }
        }
    }
}
