<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="../css/page-learing-index.css" />
</head>

<body data-spy="scroll" data-target="#myNavbar" data-offset="150">

    <!-- 页面头部 -->
    <!--头部导航-->
    <header>
        <div class="learingHeader">
            <nav class="navbar">
                <div class="">
                    <div class="logo"><img src="../img/asset-logoIco.png" width="100%" alt=""></div>
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

                        <a href="#" class="personal">个人中心<span class="personalIco"></span></a> <a href="#" class="myInfo"><img src="../img/asset-myImg.jpg" alt=""> 孙老师</a>
                    </div>
                    <div class="starch"><input type="text" class="input-search" placeholder="输入查询关键词"><input type="submit" class="search-buttom"></div>
                </div>
            </nav>
        </div>
    </header>
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
            <div class="item" style="background-image: url(../img/widget-bannerB.jpg);"></div>
            <div class="item" style="background-image: url(../img/widget-bannerA.jpg);"></div>
            <div class="item" style="background-image: url(../img/widget-banner3.png);"></div>
            <div class="item" style="background-image: url(../img/widget-bannerB.jpg);"></div>
            <div class="item" style="background-image: url(../img/widget-bannerA.jpg);"></div>
            <div class="item" style="background-image: url(../img/widget-banner3.png);"></div>
        </div>
        <div class="indicators"></div>
    </div>
    <div class="container">
        <!--左侧列表导航-->
        <div class="travel-index-nav">
            <div class="citylistbox">
                <div class="listbox hover">
                    <div class="list">
                        <dl><dt>编程入门</dt></dl>
                    </div>
                    <div class="box">

                    </div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt>数据分析师</dt></dl>
                    </div>
                    <div class="box">机器学习工程师</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl>
                            <dt>机器学习工程师</dt>
                        </dl>
                    </div>
                    <div class="box">机器学习工程师</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt>人工智能工程师</dt></dl>
                    </div>
                    <div class="box">人工智能工程师</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt>全栈工程师</dt></dl>
                    </div>
                    <div class="box">全栈工程师</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt> iOS工程师</dt></dl>
                    </div>
                    <div class="box">iOS工程师</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt> VR 开发者</dt></dl>
                    </div>
                    <div class="box"> VR 开发者</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt>商业预测分析师</dt></dl>
                    </div>
                    <div class="box">商业预测分析师</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt> Java 工程师</dt></dl>
                    </div>
                    <div class="box"> Java 工程师</div>
                </div>
                <div class="listbox">
                    <div class="list">
                        <dl><dt> 前端开发工程师</dt></dl>
                    </div>
                    <div class="box">前端开发工程师</div>
                </div>
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
                <li class="btn btn-primary"><a href="#"> JQuery</a></li>
                <li class="btn btn-primary"><a href="#">Spark</a></li>
                <li class="btn btn-primary"><a href="#">MySQL</a></li>
                <li class="btn btn-primary"><a href="#">JavaWeb</a></li>
                <li class="btn btn-primary"><a href="#">MySQL</a></li>
                <li class="btn btn-primary"><a href="#">JavaWeb</a></li>
                <li class="btn btn-primary"><a href="#">修改兴趣</a></li>
            </div>
        </div>
        <div class="conten-list">
            <div class="Recommend">
                <div class="title">精品推荐<a href="#">查看全部</a></div>
                <div class="content">
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo1.png" width="100%" alt=""><span class="lab">HOT</span></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo2.png" width="100%" alt=""><span class="lab">HOT</span></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo3.png" width="100%" alt=""><span class="lab">HOT</span></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo4.png" width="100%" alt=""><span class="lab">HOT</span></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo1.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo3.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo2.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo1.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo2.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
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
                    编程入门
                    <div class="course-nav">
                        <span class="active">热门</span>
                        <span>初中</span>
                        <span>中级</span>
                        <span>高级</span>
                    </div>
                    <a href="#">查看全部</a>
                </div>
                <div class="content">
                    <div class="cont-left">
                        <img src="../img/widget-ind-left.png" width="100%" alt="">
                    </div>
                    <div class="cont-right">
                        <div><img src="../img/widget-ind-top.png" width="100%" alt=""></div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="course-box">
                <div class="title">
                    编程入门
                    <div class="course-nav">
                        <span class="active">热门</span>
                        <span>初中</span>
                        <span>中级</span>
                        <span>高级</span>
                    </div>
                    <a href="#">查看全部</a>
                </div>
                <div class="content">
                    <div class="cont-left">
                        <img src="../img/widget-ind-left1.png" width="100%" alt="">
                    </div>
                    <div class="cont-right">
                        <div><img src="../img/widget-ind-top1.png" width="100%" alt=""></div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                        <div class="recom-item">
                            <a href="#">
                                <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                                <ul>
                                    <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                    <li><span>高级</span> <em> · </em> 1125人在学习</li>
                                </ul>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="Recommend">
                <div class="title-class">
                    机器学习工程师
                    <div class="course-nav">
                        <span class="active">热门</span>
                        <span>初中</span>
                        <span>中级</span>
                        <span>高级</span>
                    </div>
                    <a href="#">查看全部</a>
                </div>
                <div class="content">
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo1.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo2.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo3.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo1.png" width="100%" alt=""></p>
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
                        <span class="active">热门</span>
                        <span>初中</span>
                        <span>中级</span>
                        <span>高级</span>
                    </div>
                    <a href="#">查看全部</a>
                </div>
                <div class="content">
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo1.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo2.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo3.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo4.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                    <div class="recom-item">
                        <a href="#">
                            <p><img src="../img/widget-demo1.png" width="100%" alt=""></p>
                            <ul>
                                <li>Think PHP 5.0 博客系统实战项目演练 </li>
                                <li><span>高级</span> <em> · </em> 1125人在学习</li>
                            </ul>
                        </a>
                    </div>
                </div>
            </div>




        </div>


        <div class="index-cont-nav">
            <div id="myNavbar" class="collapse navbar-collapse ">
                <div id="myCollapse" class="collapse navbar-collapse">
                    <div class="logo-ico"><img src="../img/asset-logoIco.png" alt=""></div>
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
                <div class="teach-item">
                    <img src="../img/widget-teach1.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="../img/widget-teach2.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="../img/widget-teach3.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="../img/widget-teach4.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="../img/widget-teach2.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="two-box">
                <div class="teach-item-adv">
                    <img src="../img/widget-teach-adv.png" width="100%" alt="">
                </div>
                <div class="teach-item">
                    <img src="../img/widget-teach2.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="../img/widget-teach3.png" width="100%" alt="">
                    <span class="lab">28555学习过</span>
                    <ul class="teach-info">
                        <li>崔老师 <span>Java EE</span></li>
                        <li>从事多年Java软件开发及相关教育工作，熟悉JavaSE、JavaEE、Struts1,2、Spring……</li>
                    </ul>
                </div>
                <div class="teach-item">
                    <img src="../img/widget-teach4.png" width="100%" alt="">
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


    <!-- 首次登陆显示 兴趣选择 -->
    <div class="interest-box">
        <div class="mask"></div>
        <div class="interest-cont">
            <div class="top-tit">设置学习兴趣 <span>打造属于你自己的在线学习平台</span></div>
            <div class="item-box">
                <div class="modal-open">
                    <div class="item item-A">
                        <div class="title">
                            前端工程师
                        </div>
                        <div>
                            <li>js</li>
                            <li>Node.js</li>
                            <li>Ajax</li>
                            <li>React</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>Node.js</li>
                            <li>Ajax</li>
                            <li>React</li>
                        </div>
                    </div>
                    <div class="item item-B">
                        <div class="title">
                            Java开发工程师
                        </div>
                        <div>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                        </div>
                    </div>
                    <div class="item item-C">
                        <div class="title">
                            大数据研发
                        </div>
                        <div>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                        </div>
                    </div>
                </div>
                <div class="modal-open">
                    <div class="item item-D">
                        <div class="title">
                            安卓开发工程师
                        </div>
                        <div>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                        </div>
                    </div>
                    <div class="item item-E">
                        <div class="title">
                            IOS研发工程师
                        </div>
                        <div>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                        </div>
                    </div>
                    <div class="item item-F">
                        <div class="title">
                            PHP研发工程师
                        </div>
                        <div>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                            <li>js</li>
                        </div>
                    </div>
                </div>
                <div class="button">
                    <span class="pres">保存</span><span class="skip">下次再选</span>
                </div>
            </div>
        </div>
    </div>
    <!-- 页面 css js -->

    <script type="text/javascript" src="../plugins/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="../plugins/bootstrap/dist/js/bootstrap.js"></script>
    <script type="text/javascript">
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
    <script type="text/javascript" src="../js/widget-travel-index-nav.js"></script>
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
                $('.interest-box').hide();
            })
            $('.button .skip').click(function() {
                $('.interest-box').hide();
            })
        })
    </script>
    <script src="../js/page-learing-index.js"></script>
</body>