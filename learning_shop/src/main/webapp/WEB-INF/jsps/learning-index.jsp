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
    <link rel="icon" href="${pageContext.request.contextPath}/img/asset-favicon.ico">
    <title>在线教育网</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/dist/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page-learing-index.css" />
</head>

<body data-spy="scroll" data-target="#myNavbar" data-offset="150">

    <!-- 页面头部 -->
    <!--头部导航-->
   	<jsp:include page="public/header.jsp"></jsp:include>

    <!--banner区-->
    <!--<div class="travel-index-imgroll">-->
    <!--<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">-->
    <!--<ol class="carousel-indicators">-->
    <!--<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>-->
    <!--<li data-target="#carousel-example-generic" data-slide-to="1"></li>-->
    <!--<li data-target="#carousel-example-generic" data-slide-to="2"></li>-->
    <!--</ol>-->
    <!--<div class="carousel-inner" role="listbox">-->
    <!--<div class="item active">-->
    <!--<img src="banner3.png" width="100%" alt="AA"> -->
    <!--</div>-->
    <!--<div class="item">-->
    <!--<img src="bannerA.jpg" width="100%" alt="AA">-->
    <!--</div>-->
    <!--<div class="item">-->
    <!--<img src="bannerB.jpg" width="100%" alt=""> -->
    <!--</div>-->
    <!--</div>-->
    <!--</div>-->
    <!--</div>-->
    <div class="banner-roll">
        <div class="banner-item">
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/img/widget-bannerB.jpg);"></div>
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/img/widget-bannerA.jpg);"></div>
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/img/widget-banner3.png);"></div>
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/img/widget-bannerB.jpg);"></div>
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/img/widget-bannerA.jpg);"></div>
            <div class="item" style="background-image: url(${pageContext.request.contextPath}/img/widget-banner3.png);"></div>
        </div>
        <div class="indicators"></div>
    </div>
    <div class="container">
        <!--左侧列表导航-->
        <div class="travel-index-nav">
            <div class="citylistbox">
	            <c:forEach items="${catList }" var="cat" varStatus="vs">
	                <div class="listbox">
	                    <div class="list">
	                        <dl><dt>${cat.categoryName }</dt></dl>
	                    </div>
	                    
	                    <div class="box">
	                   		<c:forEach items="${cat.categorySubList }" var="subCat">
								<a href="/index/findBySubId/${subCat.id }" style="font-size: 14px">${subCat.subCatName }</a>
							&nbsp;&nbsp;&nbsp;&nbsp;
							</c:forEach>
	                    </div>
	                    
	                </div>
	             </c:forEach>
            </div>
        </div>
        <div class="my-class-box">
            <div class="title">我的课程表</div>
            <div>
                <p>继续学习 程序语言设计</p>
                <p>正在学习-使用对象</p>
            </div>
            <div>
                <p>继续学习 程序语言设计</p>
                <p>正在学习-使用对象</p>
            </div>
            <div>
                <p>继续学习 程序语言设计</p>
                <p>正在学习-使用对象</p>
            </div>
            <div>
                <a href="#">全部课程</a>
            </div>
        </div>
        <div class="recommend-list">
            <div class="btn-group btn-group-justified">
                <li class="btn btn-primary title"><a href="#">精品推荐</a></li>
                <c:forEach items="${subCatList }" var="sub">
	                <li class="btn btn-primary"><a href="#">${sub.subCatName }</a></li>
                </c:forEach>
                <li class="btn btn-primary"><a href="javascript:updateInterest()">修改兴趣</a></li>
            </div>
        </div>
        <div class="conten-list">
            <div class="Recommend">
                <div class="title">精品推荐<a href="#">查看全部</a></div>
                <div class="content">
                    
                    
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
                            <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
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
                            <p><img src="${pageContext.request.contextPath}/img/widget-demo2.png" width="100%" alt=""></p>
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
                            <p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                </div>
            </div>

            <div class="course-box">
                <div class="title">
                    	${html.subCatName}
                    <div class="course-nav">
                        <span class="active" style="cursor:pointer" id="${html.id }">热门</span>
                        <span style="cursor:pointer" id="${html.id }">初中</span>
                        <span style="cursor:pointer" id="${html.id }">中级</span>
                        <span style="cursor:pointer" id="${html.id }">高级</span>
                    </div>
                    <a href="list">查看全部</a>
                </div>
                <div class="content content_${html.id}">
                    <div class="cont-left">
                        <img src="${pageContext.request.contextPath}/img/widget-ind-left.png" width="100%" alt="">
                    </div>
                    <div class="cont-right">
         				<div><img src="${pageContext.request.contextPath}/img/widget-ind-top.png" width="100%" alt=""></div>
         				<c:forEach items="${html.courseList}" var="h">
							<div class="recom-item">
								<a href="#">
									<p>
										<img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt=""><span
											class="lab">HOT</span>
									</p>
									<ul>
										<li>${h.cname }</li>
										<li><span>${h.grade }</span> <em> · </em> 1125人在学习</li>
									</ul>
								</a>
							</div>
						</c:forEach>
                       
                    </div>
                </div>
            </div>

            <div class="course-box">
                <div class="title">
                    Javascript工程师
                    <div class="course-nav">
                        <span class="active" style="cursor:pointer" id="3">热门</span>
                        <span style="cursor:pointer" id="3">初中</span>
                        <span style="cursor:pointer" id="3">中级</span>
                        <span style="cursor:pointer" id="3">高级</span>
                    </div>
                    <a href="list">查看全部</a>
                </div>
                <div class="content content_3">
                    <div class="cont-left">
                        <img src="${pageContext.request.contextPath}/img/widget-ind-left1.png" width="100%" alt="">
                    </div>
                    <div class="cont-right">
                        <div><img src="${pageContext.request.contextPath}/img/widget-ind-top1.png" width="100%" alt=""></div>
                        
                    
                        
                    </div>
                </div>
            </div>

            <div class="Recommend">
                <div class="title-class" >
                    机器学习工程师
                    <div class="course-nav">
                        <span class="active" style="cursor:pointer" id="17">热门</span>
                        <span style="cursor:pointer" id="17">初中</span>
                        <span style="cursor:pointer" id="17">中级</span>
                        <span style="cursor:pointer" id="17">高级</span>
                    </div>
                    <a href="list">查看全部</a>
                </div>
                <div class="content content_17" >
                    
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="${pageContext.request.contextPath}/img/widget-demo1.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                </div>
            </div>


            <div class="Recommend">
                <div class="title-class">
                    前端开发工程师
                    <div class="course-nav">
                        <span class="active" style="cursor:pointer" id="18">热门</span>
                        <span style="cursor:pointer" id="18">初中</span>
                        <span style="cursor:pointer" id="18">中级</span>
                        <span style="cursor:pointer" id="18">高级</span>
                    </div>
                    <a href="${pageContext.request.contextPath}/course/course">查看全部</a>
                </div>
                <div class="content content_18">
                   
                    
                </div>
            </div>




        </div>


        <div class="index-cont-nav">
            <div id="myNavbar" class="collapse navbar-collapse ">
                <div id="myCollapse" class="collapse navbar-collapse">
                    <div class="logo-ico"><img src="${pageContext.request.contextPath}/img/asset-logoIco.png" alt=""></div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#a">编程入门</a></li>
                        <li><a href="#b">数据分析师</a></li>
                        <li><a href="#c">机器学习工程师</a></li>
                        <li><a href="#d">前端开发工程师</a></li>
                        <li><a href="#e">人工智能工程师</a></li>
                        <li><a href="#f">全栈工程师</a></li>
                        <li><a href="#g">iOS工程师</a></li>
                        <li><a href="#h">VR开发者</a></li>
                        <li><a href="#i">深度学习</a></li>
                        <li><a href="#j">商业预测分析师</a></li>
                        <li><a href="#k">Android开发工程师</a></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <div class="container">
        <div class="teacher-list text-center">
            <div class="title"> 牛人推荐 </div>
            <div class="first-box">
                <c:forEach items="${teacherList}" var="t" >
                
                
                <div class="teach-item" style="cursor:pointer" onclick="clickCheck(${t.id})">
                    <img src="${pageContext.request.contextPath}/img/widget-teach1.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>${t.tname} <span>Java EE</span></li>
                        <li>${t.intro}从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                </c:forEach>
                
                
                <div class="clearfix"></div>
            </div>
            <div class="two-box">
                <div class="teach-item-adv">
                    <img src="${pageContext.request.contextPath}/img/widget-teach-adv.png" width="100%" alt="">
                </div>
                <div class="teach-item">
                    <img src="${pageContext.request.contextPath}/img/widget-teach2.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="${pageContext.request.contextPath}/img/widget-teach3.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="${pageContext.request.contextPath}/img/widget-teach4.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- 页面底部 -->
    <div class="gotop">
        <a href="#"><i class="glyphicon glyphicon-pencil"></i><span class="hide">问题反馈</span></a>
        <a href="#top"><i class="glyphicon glyphicon-plane"></i><span class="hide">返回顶部</span></a>
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


    <!-- 首次登陆显示 兴趣选择 -->
    <div class="interest-box">
        <div class="mask"></div>
        <div class="interest-cont">
            <div class="top-tit">设置学习兴趣 <span>打造属于你自己的在线学习平台</span></div>
            <div class="item-box">
            <div class="modal-open" >
	            <c:forEach items="${catList }" var="cat" varStatus="vs">
		            <c:if test="${vs.index<3 }">
		  				
		                    <div class="item item-A">
		                        <div class="title">
		                       		     ${cat.categoryName }
		                        </div>
		                        <div>
		                        	<c:forEach items="${cat.categorySubList }" var="subCat">
		                          	  <li lang="${subCat.id }" class="${subCat.active?'active':'' }">${subCat.subCatName }</li>
		                            </c:forEach>
		                        </div>
		                    </div>
		             </c:if>
	            </c:forEach>
            </div>
            <div class="modal-open" >
	            <c:forEach items="${catList }" var="cat" varStatus="vs">
		            <c:if test="${vs.index>=3 && vs.index <6 }">
		  				
		                    <div class="item item-B">
		                        <div class="title">
		                       		     ${cat.categoryName }
		                        </div>
		                        <div>
		                        	<c:forEach items="${cat.categorySubList }" var="subCat">
		                          	  <li lang="${subCat.id }">${subCat.subCatName }</li>
		                            </c:forEach>
		                        </div>
		                    </div>
		             </c:if>
	            </c:forEach>
            </div>
            <div class="modal-open" >
	            <c:forEach items="${catList }" var="cat" varStatus="vs">
		            <c:if test="${vs.index>=6 && vs.index <9 }">
		  				
		                    <div class="item item-C">
		                        <div class="title">
		                       		     ${cat.categoryName }
		                        </div>
		                        <div>
		                        	<c:forEach items="${cat.categorySubList }" var="subCat">
		                          	  <li lang="${subCat.id }">${subCat.subCatName }</li>
		                            </c:forEach>
		                        </div>
		                    </div>
		             </c:if>
	            </c:forEach>
            </div>
             
                <div class="button">
                    <span class="pres">保存</span><span class="skip">下次再选</span>
                </div>
           
            </div>
        </div>
    </div>
    <!-- 页面 css js -->
	
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/bootstrap/dist/js/bootstrap.js"></script>
    <script type="text/javascript">
 
    
  
  function clickCheck(id){
    	window.location.href="index/teacherInfo?id="+id;
    }
    
    
    $('.Recommend .course-nav span').on('click', function(){
   	 $(this).addClass('active');
        $(this).siblings().removeClass('active');
        //根据难度进行查询课程

        var grade=$(this).text();
        var id=$(this).text();
        var catid=$(this).attr('id');  //机器学习工程师
        $('.Recommend .content_'+catid).html('');
        $.get('queryBygrade',{grade:grade,catid:catid},function(data){
       	 console.log(data);
       	 var html='';
       	 for(var i=0;i<data.data.length;i++){
       		 html+='<div class="recom-item"><a href="#"><p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt="">'
       		 +'</p><ul><li>Think '+data.data[i].cname+' </li>'
       		 +'<li><span>'+data.data[i].grade+'</span> <em> · </em> 1125人在学习</li></ul></a></div>'
       	 }
       	 console.log($('.Recommend .content_'+catid));
       	 $('.Recommend .content_'+catid).html(html);
       	
        })
   })
   
   
   
    $('.course-box .title .course-nav span').on('click', function(){
    	 $(this).addClass('active');
         $(this).siblings().removeClass('active');
         //根据难度进行查询课程
         var grade=$(this).text();
        
         var catid=$(this).attr('id');
         $('.course-box .content_'+catid+' .cont-right').html('');
         $.get('queryBygrade',{grade:grade,catid:catid},function(data){
        	 console.log(data);
        	 
        	 var html='<div><img src="${pageContext.request.contextPath}/img/widget-ind-top.png" width="100%" alt=""></div>';
        	 for(var i=0;i<data.data.length;i++){
        		 html+='<div class="recom-item"><a href="#"><p><img src="${pageContext.request.contextPath}/img/widget-demo4.png" width="100%" alt="">'
        		 +'</p><ul><li>Think '+data.data[i].cname+' </li>'
        		 +'<li><span>'+data.data[i].grade+'</span> <em> · </em> 1125人在学习</li></ul></a></div>'
        	 }
        	 $('.course-box .content_'+catid+' .cont-right').html(html);
        	
         })
    })
    
    
    
    
    
    
    
    
        var tg = $('.banner-item .item');
        var num = 0;
        for (i = 0; i < tg.length; i++) {
            $('.indicators').append('<span></span>');
            $('.indicators').find('span').eq(num).addClass('active');
        }

        function roll() {
            tg.eq(num).animate({
                'opacity': '1',
                'z-index': num
            }, 1000).siblings().animate({
                'opacity': '0',
                'z-index': 0
            }, 1000);
            $('.indicators').find('span').eq(num).addClass('active').siblings().removeClass('active');
            if (num >= tg.length - 1) {
                num = 0;
            } else {
                num++;
            }
        }
        $('.indicators').find('span').click(function() {
            num = $(this).index();
            roll();
        });
        var timer = setInterval(roll, 3000);
        $('.banner-item').mouseover(function() {
            clearInterval(timer)
        });
        $('.banner-item').mouseout(function() {
            timer = setInterval(roll, 3000)
        });
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/widget-travel-index-nav.js"></script>
    <script>
        $('.teach-item').hover(function() {
            $(this).find('.teach-info').animate({
                'height': '100%'
            }, 500);
        }, function() {
            $(this).find('.teach-info').animate({
                'height': '112px'
            }, 500);
        })


        $('.gotop a').hover(function() {
            $(this).find('span').removeClass('hide')
        }, function() {
            $(this).find('span').addClass('hide')
        })

		
        $(function() {
        	
        	$('.interest-box').hide();
        	
        	$.get("/index/isShowInterestBox",function(data){
        		console.log(data);
        		if(data.code == 1){
        			$('.interest-box').show();
        		}
        	},"json");
        	
            $('.interest-box .interest-cont li').click(function() {
                if ($(this).hasClass('active')) {
                    $(this).removeClass('active');
                } else {
                    $(this).addClass('active');
                }
            })
            $('.mask').click(function() {
                $('.interest-box').hide();
            })
            $('.button .pres').click(function() {
            	var ids = new Array();
                $(".interest-box .interest-cont li.active").each(function(index,item) {
                    ids[index] = $(this).attr("lang");
                });
                $('.interest-box').hide();
                window.location.href = "/index/saveInterest?ids="+ids;
            })
            $('.button .skip').click(function() {
                $('.interest-box').hide();
            })
        })
        
        
       	//修改兴趣
       	function updateInterest(uid){
        	$('.interest-box').show();
        }
    </script>
    <script src="${pageContext.request.contextPath}/js/page-learing-index.js"></script>
</body>