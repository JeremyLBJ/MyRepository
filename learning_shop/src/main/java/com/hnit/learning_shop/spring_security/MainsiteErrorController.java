package com.hnit.learning_shop.spring_security;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainsiteErrorController implements ErrorController {

    @RequestMapping("error")
    public String handlrError(HttpServletRequest request){
        Integer code = (Integer) request.getAttribute("javax.servlet.error.status_code");
        return code.toString();
    }
    @Override
    public String getErrorPath() {
        return "error";
    }
}
