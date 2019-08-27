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
							<input type="text" name="setusername" class="textInput"
								placeholder="请输入用户名"> <span class="proof cl-orange"></span>
						</p>
					</div>
					<div class="phoneBox">
						<p>手机号码</p>
						<p>
							<input type="text" name="phone" class="textInput"
								placeholder="请输入11位手机号码"> <input type="submit"
								class="codeSub" value="发送验证码"> <span
								class="proof cl-orange"></span>
						</p>
					</div>
					<div>
						<p>短信验证码</p>
						<p>
							<input type="text" name="phoneCode" class="textInput"
								placeholder="请输入验证码"> <span class="proof cl-orange"></span>
						</p>
					</div>
					<div>
						<p>设置密码</p>
						<p>
							<input type="text" name="setPassword" class="textInput"
								placeholder="请设置密码"> <span class="proof cl-orange"></span>
						</p>
					</div>
					<div>
						<p>确认密码</p>
						<p>
							<input type="text" name="conPassword" class="textInput"
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
    		var email=$('.phone');
    		$.ajax({
    			type:"POST",
    			url:"SendCode",
    			data:email,
    			cache:false,
    			success:function(){
    				alert("验证码已发送，请查收！");
    			}
    		});	
    	}
    </script>
</body>
<c:if test="${!empty msg}">
	<script type="text/javascript">
		alert('${msg}');
	</script>

</c:if>
