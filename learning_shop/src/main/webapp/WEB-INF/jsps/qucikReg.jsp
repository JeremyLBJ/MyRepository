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
            <form action="/doLogin" method="post" id="logForm">
            <div class="signItem show">
                <div>
                    <p>欢迎您  ： ${username }</p>
                    <p>
                        <input type="hidden" name="username" value="${username }">
                        <input type="hidden" name="password" value="${username }">
                        <span class="proof cl-orange"></span>
                    </p>
                </div>
                <div class="submitBut" onclick="document.getElementById('logForm').submit()">确认</div>
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
    $(".submitBut").click();
    </script>
</body>

