<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page-learing-personal.css" />
</head>

<body>
    <!-- 页面头部 -->
    <!--头部导航-->
    <jsp:include page="public/header.jsp"></jsp:include>
    <div class="personal-header" style="background-image: url(${pageContext.request.contextPath}/img/asset-banner.png);">
        <!--<div class="personal-info">-->
        <!--<p><h1>吴雪</h1></p>-->
        <!--<p>Web前端工程师 学习时长 48小时35分</p>-->
        <!--</div>-->
        <!--<div class="container">-->
        <!--<div class="col-lg-2"><img src="${pageContext.request.contextPath}/img/logoIco.png" alt=""></div>-->
        <!--<div class="col-lg-4 title text-left">学习中心</div>-->
        <!--<div class="col-lg-6 text-right"><input type="text" class="input-search" placeholder="输入查询关键词"><input type="submit" class="search-buttom"></div>-->
        <!--</div>-->
    </div>
    <!-- 页面 -->
    <div class="container">
        <div class="personal-nav pull-left">
            <div class="nav nav-stacked text-left">
                <div class="title">个人中心</div>
                <div class="my-ico">
                    <img src="${pageContext.request.contextPath}/img/${user.userPic }" alt="">
                    <p>${user.username }</p>
                </div>
                <div class="item">
                    <li class="active"><a href="" class="glyphicon glyphicon-tower"> 我的课程<i class="pull-right">></i></a></li>
                    <li><a href="#" class="glyphicon glyphicon-list-alt"> 我的订单<i class="pull-right">></i></a> </li>
                    <li><a href="" class="glyphicon glyphicon-envelope"> 我的消息<i class="pull-right">></i></a></li>
                    <li><a href="" class="glyphicon glyphicon-heart"> 我的收藏<i class="pull-right">></i></a> </li>
                    <li><a href="" class="glyphicon glyphicon-cog"> 个人设置<i class="pull-right">></i></a></li>
                    <li><a href="logout" class="glyphicon glyphicon-log-out"> 退出<i class="pull-right">></i></a></li>
                </div>
            </div>
        </div>
        <div class="personal-content pull-right">
            <div class="personal-cont">
                <div class="top">
                    <div class="tit"><span>最近学习课程</span></div>

                    <div class="top-cont">
                        <div class="col-lg-8">
                            <div class="imgIco"><img src="${pageContext.request.contextPath}/img/asset-timg.png" width="60" height="28" alt=""></div>
                            <div class="title"><span class="lab">继续学习</span> 程序语言设计 <span class="status">学习中</span></div>
                            <div class="about"><span class="lab">正在学习</span> 使用对象 <span class="data">有效日期: 2017.06.05 - 2018.06.05</span></div>
                            <div class="rate">
                                <li class="active"></li>
                                <li></li>
                                <li></li>
                                <li></li><span>1/4 已完成部分</span> <span>进度25%</span></div>
                        </div>
                        <div class="division"></div>
                        <div class="col-lg-4 text-right">
                            <a href="/toCourseVideo" class="goLear"> 继续学习</a>
                            <a href="#" class="evalu"> 课程评价</a>
                            <div class="aft" style="top:0px;right:0px;">● ● ●
                                <ul></ul>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="my-course">
                    <div class="title">
                        <div class="lab-title">全部课表</div>
                        <div class="tit-Item"><span><em class="active">按学习时间进行排序</em> <em>按加入时间进行排序</em></span><span><em class="active">全部</em><em>付费</em><em>即将过期</em><em>失效</em></span></div>
                    </div>
                    <div class="cont">
                    
                    <c:forEach items="${courseList }" var="course">
                        <div class="col-lg-6">
                            <div class="item">
                                <div class="imgIco"><img src="${pageContext.request.contextPath}/img/asset-timg.png" width="60" height="28" alt=""></div>
                                <div class="title"><span class="lab">继续学习</span> ${course.cname } <span class="status">学习中</span>
                                    <div class="aft">● ● ●
                                        <ul></ul>
                                    </div>
                                </div>
                                <div class="about"><span class="lab">正在学习</span> ${course.cDesc } </div>
                                <div class="time">有效日期: <fmt:formatDate value="${course.startTime }" pattern="yyyy-MM-dd HH:mm:ss"/> - 
                                <fmt:formatDate value="${course.endTime }" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                <div class="rate">
                                    <li class="active"></li>
                                    <li></li>
                                    <li></li>
                                    <li></li><span>1/4 已完成部分 <em>进度 25%</em></span></div>
                                <div class="parting"></div>
                                <div class="butItem text-center"><a href="/toCourseVideo" class="golearing">继续学习</a> <a href="#" class="classcom">课程评价</a></div>
                            </div>
                        </div>
                      </c:forEach>
                        <div class="clearfix"></div>
                        <div class="help"><span class="">帮助和常见问题 ></span><span class="">问题反馈 ></span></div>
                    </div>
                </div>
                <div id="listcont">
                    <li><a href="#">课程成绩</a></li>
                    <li><a href="#">联系老师</a></li>
                    <li><a href="#">课程延期</a></li>
                    <li><a href="#">退出课程</a></li>
                </div>
            </div>
        </div>
    </div>
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
        $(function() {
            $('.aft').hover(function() {
                if (!$(this).hasClass('ac')) {
                    $(this).find('ul').html($('#listcont').html())
                    $(this).addClass('ac')
                } else {
                    $(this).find('ul').text('')
                    $(this).removeClass('ac')
                }
            })
        })


        $(function() {
            $(window).scroll(function() {
                console.log($(this)[0].scrollY)
                if ($(this)[0].scrollY > 235) {
                    $('.personal-nav').css({
                        'position': 'fixed',
                        'top': 10
                    });
                } else if ($(this)[0].scrollY <= 155) {
                    $('.personal-nav').css({
                        'position': 'relative',
                        'top': -70
                    });
                };
            })
        })
    </script>
</body>

