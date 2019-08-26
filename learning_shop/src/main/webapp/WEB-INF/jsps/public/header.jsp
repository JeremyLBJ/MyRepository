<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <header>
        <div class="learingHeader">
            <nav class="navbar">
                <div class="">
                    <div class="logo"><img src="../img/asset-logoIco.png" width="100%" alt=""></div>
                    <div class="nav-list">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="index">首页</a></li>
                            <li><a href="#">课程</a></li>
                            <li><a href="#">职业规划</a></li>
                            <li></li>
                        </ul>
                    </div>

                    <div class="sign-in">
                    	<c:choose>
                    		<c:when test="${user==null}">
                    			<!-- 未登录 -->
                        		<a href="tologin">登录 </a> <span> | </span> <a href="toreg"> 注册</a>
                    		</c:when>
                    		<c:otherwise>
                    			<!-- 登录 -->
                        		<a href="mypersonal" class="personal">个人中心<span class="personalIco"></span></a> <a href="#" class="myInfo"><img src="./img/${user.userPic}" alt="">${user.name }</a>
                    		</c:otherwise>
                    	</c:choose>
                        
                        
                    </div>
                    <div class="starch"><input type="text" class="input-search" placeholder="输入查询关键词"><input type="submit" class="search-buttom"></div>
                </div>
            </nav>
        </div>
    </header>