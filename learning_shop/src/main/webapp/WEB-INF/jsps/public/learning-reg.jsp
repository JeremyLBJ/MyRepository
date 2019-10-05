<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="../css/page-learing-sign.css" />
</head>

<body>
    <!-- 页面 -->
    <div class="register">
        <!--<img src="../../assets/img/logoico.png" alt="logo" width="200">-->
        <a href="index" class="backIndex">返回首页</a>
        <div class="register-body container text-center">
            <div class="signIco"><img src="../img/asset-logoIco.png" alt="logo" width="180"></div>
            <div class="signTit cl"></div>
            <a href="tologin">已有账号，立即登录→</a>
            <form action="doReg" method="post">
				<div class="regItem show">
					<div>
						<p>用户名</p>
						<p>
							<input type="text" name="username" class="textInput"
								placeholder="请输入用户名" onclick="checkUser()" id="username"
								value="<%=(request.getParameter("username")==null?"":request.getParameter("username"))%>"> 
							<span id="user"></span>
						</p>
					</div>
					<div class="phoneBox">
						<p>邮箱</p>
						<p>
							<input type="email" name="email" class="textInput"
								placeholder="请输入邮箱" id="email" onclick="checkEmail()"
								value="<%=(request.getParameter("email")==null?"":request.getParameter("email"))%>"> <input type="submit"
								class="codeSub" value="发送验证码" onclick="getCode()" id="email_check" style="border:#ddd 1px;" disabled="true">
								<span id="cemail"></span> 
						</p>
					</div>
					<div>
						<p>邮箱验证码</p>
						<p>
							<input type="text" name="code" class="textInput"
								placeholder="请输入验证码"> <span class="proof cl-orange"></span>
						</p>
					</div>
					<div>
						<p>设置密码</p>
						<p>
							<input type="password" name="password" class="textInput"
								placeholder="请设置密码" onclick="checkPwd()" id="demo_input">
								 <span id="pwd"></span>
						</p>
					</div>
					<div>
						<p>确认密码</p>
						<p>
							<input type="password" name="rpassword" class="textInput"
								placeholder="请确认密码"> <span class="proof cl-orange"></span>
						</p>
					</div>
					<div class="setSing">
						<label><input type="checkbox" name="agreement"
							onclick="check()" checked>同意协议并注册 </label><a href="#">《学成网注册协议》</a>
						<span class="proof cl-orange"></span>
					</div>
					<!-- <div class="registerBut" onclick="document.getElementById('regForm').submit()">注册</div> -->
					<input type="submit" value="注册 " id="button_change"
						style="font-size: 18px; width: 350px; height: 40px; background: #00a4ff; color: #f3f5f7; border: #00a4ff 1px;">
				</div>
			</form>
        </div>
        <footer>
            <p><a href="#">关于我们</a><a href="#">联系我们</a><a href="#">客户服务</a><a href="#">管理团队</a><a href="#">新手指南</a><a href="#">合作伙伴</a></p>
            <p>地址：北京市昌平区建材城西路金燕龙办公楼一层 邮编：100096 电话：400-618-4000 传真：010-82935100 邮箱：zhanghj@itcast.cn 京ICP备00001号 公安网安备110112119号 </p>
        </footer>
    </div>
    <!-- 页面 css js -->
    <script type="text/javascript" src="../plugins/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="../plugins/bootstrap/dist/js/bootstrap.js"></script>
    <script src="../js/page-learing-sign.js"></script>
    <script type="text/javascript">
    	function check(){
   	 		if(!$("input[type='checkbox']").is(':checked')){
   		 		$("#button_change").attr("disabled",true).css("background-color","#999");
   	 		}else{
   		 		$("#button_change").attr("disabled",false).css("background-color","#00a4ff");
   	 		}
   		}
    	
    	//点击获取验证码
    	function getCode(){
    		var email=$('#email');
    		$.ajax({
    			type:"POST",
    			url:"SendCode",
    			data:email,
    			cache:false,
    			success:function(res){
    				if(res=="1"){
    					alert("验证码已发送，请查收！");
    					}else{
    					alert("该邮箱已经被注册！");
    				}
    			}
    		});	
    	}
    	
    	//检查用户名格式
    	function checkUser(){
    		var username=document.getElementById("username").value;
    		var userSpan=document.getElementById("user");
    		var reg=/^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){4,19}$/;
    		if(reg.test(username)==false){
    			userSpan.innerHTML="输入的用户名格式不正确(以字母开头)".fontcolor("red");
    			return false;
    			}else{
    			userSpan.innerHTML="";
    			return true;
    		}
    	}
    	
    	//检查邮箱格式
    	function checkEmail(){
    		var useremail=document.getElementById("email").value;
    		var userEmail=document.getElementById("cemail");
    		var reg=/^[a-z0-9]+([._\\-]*[a-z0-9]*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$)/;
    		if(document.getElementById("email").value==""||reg.test(document.getElementById("email"))==true){
    			$("#email_check").attr("disabled",true).css("background-color","#999");
    		}else{
    			$("#email_check").attr("disabled",false).css("background-color","#ddd");
    		}
    		if(reg.test(useremail)==false){
    			userEmail.innerHTML="输入的邮箱格式不正确，请重新输入".fontcolor("red");
    			return false;
    			}else{
    			userEmail.innerHTML="";
    			return true;
    		}
    	}
    	
    	//检查密码
    	function checkPwd(){
    		 var p = document.getElementById("demo_input");
    	     var rePwd = document.getElementById("pwd");
    	     var reg = /^\w{6,18}$/;
    	     if(!reg.test(p.value)){
    	         p.focus();
    	         rePwd.innerHTML = "密码由6-18位的数字、字母、下划线组成".fontcolor("red");
    	     }else {
    	         rePwd.innerHTML = "";
    	     }
    	}
</script>
</body>
<c:if test="${!empty msg}">
	<script type="text/javascript">
		alert('${msg}');
	</script>

</c:if>

