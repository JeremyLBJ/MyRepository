<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/img/asset-favicon.ico">
    <title>在线教育网</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/dist/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page-learing-list.css" />
</head>

<body>
    <!-- 页面头部 -->
    <!--头部导航-->
    <header>
        <div class="learingHeader">
            <nav class="navbar">
                <div class="">
                    <div class="logo"><img src="${pageContext.request.contextPath}/img/asset-logoIco.png" width="100%" alt=""></div>
                    <div class="nav-list">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="travel.index.html" target="_blank">首页</a></li>
                            <li><a href="#">课程</a></li>
                            <li><a href="#">职业规划</a></li>
                            <li></li>
                        </ul>
                    </div>

                    <div class="sign-in">
                        <!-- 未登录 -->
                        <!--<a href="#">登录 </a> <span> | </span> <a href="#"> 注册</a>-->
                        <!-- 登录 -->

                        <a href="#" class="personal">个人中心<span class="personalIco"></span></a> <a href="#" class="myInfo"><img src="${pageContext.request.contextPath}/img/asset-myImg.jpg" alt=""> 孙老师</a>
                    </div>
                    <div class="starch"><input type="text" class="input-search" placeholder="输入查询关键词"><input type="submit" class="search-buttom"></div>
                </div>
            </nav>
        </div>
    </header>
    <div class="learing-list">
        <div class="list-box">
            <ul class="oneGrade">
                <li>一级分类：</li>
              
                <ol>
                	<li class="active">全部</li>
                	<c:forEach items="${categoryList}" var="cl">
                    	<li value="${cl.id }">${ cl.categoryName}</li>
                  	</c:forEach>
                </ol>
            </ul>
            <ul class="secondGrade">
                <li>二级分类：</li>
                <ol class="secondTitle">
                	<li class="active">全部</li>
               	 	<c:forEach items="${categorySubList }" var="csl">
                    	<li value="${csl.id }">${csl.subCatName}</li>
                    </c:forEach>
                </ol><a href="#" class="more">更多 ∨</a></ul>
            <ul class="Grade">
                <li>难度等级：</li>
                <li class="all">全部</li>
                <ol>
                    <li>初级</li>
                    <li>中级</li>
                    <li>高级</li>
                </ol>
            </ul>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-9 list-row-left">
                <div class="list-cont-left">
                    <div class="tit">
                        <ul class="nav nav-tabs ">
                            <li class="active"><a href="#">推荐</a></li>
                            <li><a href="#">最新</a></li>
                            <li><a href="#">热评</a></li>
                            <div class="page navbar-right">
                                <a href="#" class="prev">
                                    < </a>
                                        <span class="">1/28</span>
                                        <a href="#" class="next"> ></a>
                            </div>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="content-list">
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""><span class="lab">HOT</span></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""><span class="lab">HOT</span></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo3.png" width="100%" alt=""><span class="lab">HOT</span></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""><span class="lab">HOT</span></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo3.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo3.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo3.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo3.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo3.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo3.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <div class="recom-item">
                                <a href="#">
                                    <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""></p>
                                    <ul>
                                        <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </ul>
                                </a>
                            </div>
                            <li class="clearfix"></li>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 list-row-rit">
                <div class="list-cont-right">
                    <div class="right-box">
                        <div class="tit">精品TOP榜</div>
                        <div class="contList">
                            <div class="contList-item">
                                <div class="box hov">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-topBg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-topBg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-topBg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-topBg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-topBg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-topBg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tit">猜你喜欢</div>
                        <div class="contList">
                            <div class="contList-item">
                                <div class="box hov">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-btnbg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-btnbg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-btnbg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-btnbg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-btnbg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                            <div class="contList-item">
                                <div class="box">
                                    <div class="info">
                                        <p>Think PHP 5.0 博客系统实战项目演练</p>
                                        <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                    </div>
                                    <div class="infoImg">
                                        <div><img src="${pageContext.request.contextPath}/img/widget-btnbg.png" width="100%" height="110" alt=""></div>
                                        <div class="desc">通过对ThinkPHP框架基础，带领大家由浅入深轻松掌握ThinkPHP的理论基础，更加全面的掌握ThinkPHP框架运行机制……</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 页面底部 -->
    <!--底部版权-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div>
                        <!--<h1 style="display: inline-block">学成网</h1>--><img src="${pageContext.request.contextPath}/img/asset-logoIco.png" alt=""></div>
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

    <!-- 页面 css js -->

    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/bootstrap/dist/js/bootstrap.js"></script>
    <script>
   	//根据一级分类动态添加二级分类
        $('.list-box .oneGrade ol li').on('click', function() {
        	
        	
            $(this).addClass('active');
            $(this).siblings().removeClass('active');
            $.ajax({
            	url:'queryByid',
            	type:"get",
            	data:{id:$(this).val()},
            	dataType:"json",
            	async:false,
            	success:function(data){
            	
            	$('.secondTitle').html('');
            	var html='<li class="active">全部</li>';
            	for(var i=0;i<data.data.length;i++){
            		html+='<li value='+data.data[i].id+'>'+data.data[i].subCatName+'</li>'
            	}
            	$('.secondTitle').html(html);
            }
            
            })
            secondGrade();
        	
        })
         //二级分类
		secondGrade();
 		//难度分类
        $('.list-box .Grade ol li').on('click', function() {
        	
        	alert($(this).val());
            $(this).addClass('active');
            $(this).siblings().removeClass('active');
        })
        
        $('.list-cont-left .nav-tabs li').on('click', function() {
            $(this).addClass("active").siblings().removeClass('active');
        })


        $('.contList-item').hover(function() {
            $(this).find('.box').addClass('hov').parent().siblings().find('.box').removeClass('hov')
        }, function() {
            $(this).siblings().first().find('.box').addClass('hov').parent().siblings().find('.box').removeClass('hov')
        })
        
        function secondGrade(){
        	$('.list-box .secondGrade  li').on('click', function() {
            	
            	alert($(this).val());
                $(this).addClass('active');
                $(this).siblings().removeClass('active');
            })
   		}
    </script>
</body>