<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../img/asset-favicon.ico">
    <title>在线教育网</title>
    <link rel="stylesheet" href="../plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.css" />
    <link rel="stylesheet" href="../css/page-learing-forget-password.css" />
</head>

<body>
    <!-- 页面 -->
    <div class="register">
        <div class="register-head">
            <div class="wrap">
                <a href="javascript:;" class="logo">
                <img src="../img/asset-logoico.png" alt="logo" width="200">
            </a>
                <div class="gologin">我有账号 去<a href="javascript:;">登录</a></div>
            </div>
        </div>
        <div class="register-body">
            <div class="wrap">
                <div class="bar ">
                    <dl class="first active">
                        <dt class="s-num">1</dt>
                        <dd class="s-text">填写账户名<s></s><b></b></dd>
                        <dd></dd>
                    </dl>
                    <dl class="normal active">
                        <dt class="s-num">2</dt>
                        <dd class="s-text">验证身份<s></s><b></b></dd>
                    </dl>
                    <dl class="normal">
                        <dt class="s-num">3</dt>
                        <dd class="s-text">设置新密码<s></s><b></b></dd>
                    </dl>
                    <dl class="last">
                        <dt class="s-num">&nbsp;</dt>
                        <dd class="s-text">完成<s></s><b></b></dd>
                    </dl>
                </div>
                <form class="form-horizontal" id="regStudentForm">
                    <ul class="r-position">

                        <li>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">验证邮箱</label>
                                <div class="col-sm-9">
                                <input type="text" class="form-control" value="" id="email"><br>
                                <span style="color: red" class="message"></span>
                               <span style="color: red" class="message"></span>
                                   <!--  <p class="form-control-static">email@example.com</p> -->
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="form-group verif">
                                <label class="col-sm-3 control-label">验证码</label>
                                <div class="col-sm-9 verifphone">
                                    <input type="text" class="form-control" id="verif" name="verif" placeholder="请输入验证码">
                                    <button class="btn btn-default send" type="button">发送验证码</button>
                                    <input type="hidden" value="" id="mails">
                                    <span class="verif-span"></span>
                                </div>
                            </div>
                        </li>
                        <li class="mag-left">
                            <button type="button" class="btn btn-primary regStuBtn">下一步</button>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
        <div class="register-footer">
            <!--底部版权-->
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <div>
                                <!--<h1 style="display: inline-block">学成网</h1>--><img src="../img/asset-logoIco.png" alt=""></div>
                            <div>学成网致力于普及中国最好的教育它与中国一流大学和机构合作提供在线课程。</div>
                            <div>© 2017年XTCG Inc.保留所有权利。-沪ICP备15025210号</div>
                            <input type="button" class="btn btn-primary" value="下 载" />
                        </div>
                        <div class="col-md-5 row">
                            <dl class="col-md-4">
                                <dt>关于学成网</dt>
                                <dd>关于</dd>
                                <dd>管理团队</dd>
                                <dd>工作机会</dd>
                                <dd>客户服务</dd>
                                <dd>帮助</dd>
                            </dl>
                            <dl class="col-md-4">
                                <dt>新手指南</dt>
                                <dd>如何注册</dd>
                                <dd>如何选课</dd>
                                <dd>如何拿到毕业证</dd>
                                <dd>学分是什么</dd>
                                <dd>考试未通过怎么办</dd>
                            </dl>
                            <dl class="col-md-4">
                                <dt>合作伙伴</dt>
                                <dd>合作机构</dd>
                                <dd>合作导师</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </footer>

        </div>
    </div>
    <!-- 页面 css js -->
    <script type="text/javascript" src="../plugins/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="../plugins/bootstrap/dist/js/bootstrap.js"></script>
    <script src="../js/page-learing-forget-password.js"></script>
    <script type="text/javascript">
    //邮箱格式匹配
    $('#email').click(function email(){
    	var email = $('#email').val();
    	var	reg = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    	if(email == ''){
    		 $('.message').html('');
    	}else{
    	if(reg.test(email)){
            
          }else{
            $('.message').html('邮箱格式不正确');
          }
    	}
    });
    //点击发送验证码
      $('.send').click(function send(){
    	$.get("sendMail",function(data){
    		$('#mails').val(data.data)
    	});
    	
    });  
    //验证码匹配
    $('.regStuBtn').click(function next(){
    	var verif = $('#verif').val();
    	var email = $('#mails').val();
    	if(verif == email){
    		window.location.href = "learingThree";
    	}else{
    		$('.message').html('验证码有误请重新输入');
    	}
    });
    </script>
</body>