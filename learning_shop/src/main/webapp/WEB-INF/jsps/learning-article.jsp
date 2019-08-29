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
    <link rel="stylesheet" href="../css/page-learing-article.css" />
</head>

<body data-spy="scroll" data-target="#articleNavbar" data-offset="150">
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
    <div class="article-banner">
        <div class="banner-bg"></div>
        <div class="banner-info">
            <div class="banner-left">
                <p>课程 <span>\ 编程入门</span></p>
                <p class="tit">程序语言设计</p>
                <p class="pic"><span class="new-pic">特惠价格￥999</span> <span class="old-pic">原价￥1999</span></p>
                <p class="info">
                    <a href="#">马上学习</a>
                    <span><em>难度等级</em>中级</span>
                    <span><em>课程时长</em>2小时27分</span>
                    <span><em>评分</em>4.7分</span>
                    <span><em>授课模式</em>录播</span>
                </p>
            </div>
            <div class="banner-rit">
                <p><img src="../img/widget-video.png" alt=""> </p>
                <p class="vid-act"><span> <i class="i-heart"></i>收藏 23 </span> <span>分享 <i class="i-weixin"></i><i class="i-qq"></i></span></p>
            </div>
        </div>
    </div>
    <div class="article-cont">
        <div class="tit-list">
            <a href="javascript:;" id="articleClass" class="active">课程介绍</a>
            <a href="javascript:;" id="articleItem">目录</a>
            <a href="javascript:;" id="artcleAsk">问答</a>
            <a href="javascript:;" id="artcleNot">笔记</a>
            <a href="javascript:;" id="artcleCod">评价</a>
            <div class="down-fill">
                <span>资料下载</span>
                <ul>
                    <li>java视频资料</li>
                    <li>java视频资料</li>
                    <li>java视频资料</li>
                </ul>
            </div>
        </div>
        <div class="article-box">
            <div class="articleClass" style="display: block">
                <div class="rit-title">评价</div>
                <div class="article-cont">
                    <div class="article-left-box">
                        <div class="content">
                            <div class="content-com about">
                                <div class="title"><span>课程介绍</span></div>
                                <div class="cont cktop">
                                    <div class="drop-down">
                                        <p>本课程介绍编程语言的基本概念，重点介绍函数式编程。本课程使用的语言ML，球拍，红宝石作为教学概念的车辆，但真正的意图是教足够的关于如何任何语言“合在一起”，使您更有效的编程在任何语言-和学习新的...</p>
                                    </div>
                                    <span class="on-off">更多 <i class="i-chevron-bot"></i></span>
                                </div>
                            </div>
                            <div class="content-com suit">
                                <div class="title"><span>适用人群</span></div>
                                <div class="cont cktop">
                                    <div class="drop-down">
                                        <p>本课程假设学生熟悉大多数入门课程所涉及的程序，但它被明确设计成不是一门特别高级的课程。学生应该熟悉变量，条件语句，数组，链表，栈，和递归（递归算法将审查和扩展），和一个接口和实现之间的区别。学生应该渴望用新的语言编写程序。本课程C部分分析了面向对象的基本概念和对比他们的其他语言，用java或密切相关的语言如此熟悉（例如，C #）可能有助于C部分，但它是没有必要的作业。本课程是基于专为第二和第三年本科生设计的课程：不是第一个计算机科学课程，但不是一个高级课程。因此，它当然不会涵盖在编程语言的美丽世界的一切，但它是一个坚实的介绍。它的目的是大开眼界和迷人的学习者寻求“第三或第四编程课程”，并为有更多的经验，谁正在寻找一个明确和精确的编程语言基础的学习者。课程中的作业设计是具有挑战性的，但课程内容需要你所需要的一切。</p>
                                    </div>
                                    <span class="on-off">更多 <i class="i-chevron-bot"></i></span>
                                </div>
                            </div>
                            <div class="content-com course">
                                <div class="title"><span>课程制作</span></div>
                                <div class="cont">
                                    <div class="img-box"><img src="../img/widget-pic.png" alt=""></div>
                                    <div class="info-box">
                                        <p class="name">教学方：<em>毛老师</em></p>
                                        <p class="lab">高级前端开发工程师 10年开发经验</p>
                                        <p class="info">JavaEE开发与教学多年，精通JavaEE技术体系，对流行框架JQuery、DWR、Struts1/2，Hibernate，Spring，MyBatis、JBPM、Lucene等有深入研究。授课逻辑严谨，条理清晰，注重学生独立解决问题的能力。</p>
                                        <p><span>难度等级</span>中级</p>
                                        <p><span>课程时长</span>8-16小时/周，共4周</p>
                                        <p><span>如何通过</span>通过所有的作业及考核，作业共4份，考核为一次终极考核</p>
                                        <p><span>用户评分</span>平均用户评分 <em>4.9</em> <a href="#">查看全部评价</a></p>
                                        <p><span>课程价格</span>特惠价格<em>￥999</em> <i> 原价1999 </i></p>
                                    </div>
                                </div>
                            </div>
                            <div class="content-com prob">
                                <div class="title"><span>常见问题</span></div>
                                <div class="cont">
                                    <ul>
                                        <li class="item"><span class="on-off"><i class="i-chevron-bot"></i> 我什么时候能够访问课程视频与作业？</span>
                                            <div class="drop-down">
                                                <p>课程安排灵活，课程费用支付提供180天全程准入和资格证书。自定进度课程建议的最后期限，但你不会受到惩罚错过期限，只要你赚你的证书在180天内。以会话为基础的课程可能要求你在截止日期前保持正轨，但如果你落后了，你可以切换到以后的会议，你完成的任何工作将与你转移。</p>
                                            </div>
                                        </li>
                                        <li class="item"><span class="on-off"><i class="i-chevron-bot"></i> 如何需要额外的时间来完成课程会怎么样？</span>
                                            <div class="drop-down">
                                                <p>课程安排灵活，课程费用支付提供180天全程准入和资格证书。自定进度课程建议的最后期限，但你不会受到惩罚错过期限，只要你赚你的证书在180天内。以会话为基础的课程可能要求你在截止日期前保持正轨，但如果你落后了，你可以切换到以后的会议，你完成的任何工作将与你转移。</p>
                                            </div>
                                        </li>
                                        <li class="item"><span class="on-off"><i class="i-chevron-bot"></i> 我支付次课程之后会得到什么？</span>
                                            <div class="drop-down">
                                                <p>课程安排灵活，课程费用支付提供180天全程准入和资格证书。自定进度课程建议的最后期限，但你不会受到惩罚错过期限，只要你赚你的证书在180天内。以会话为基础的课程可能要求你在截止日期前保持正轨，但如果你落后了，你可以切换到以后的会议，你完成的任何工作将与你转移。</p>
                                            </div>
                                        </li>
                                        <li class="item"><span class="on-off"><i class="i-chevron-bot"></i> 退款条例是如何规定的？</span>
                                            <div class="drop-down">
                                                <p>课程安排灵活，课程费用支付提供180天全程准入和资格证书。自定进度课程建议的最后期限，但你不会受到惩罚错过期限，只要你赚你的证书在180天内。以会话为基础的课程可能要求你在截止日期前保持正轨，但如果你落后了，你可以切换到以后的会议，你完成的任何工作将与你转移。</p>
                                            </div>
                                        </li>
                                        <li class="item"><span class="on-off"><i class="i-chevron-bot"></i> 有助学金？</span>
                                            <div class="drop-down">
                                                <p>课程安排灵活，课程费用支付提供180天全程准入和资格证书。自定进度课程建议的最后期限，但你不会受到惩罚错过期限，只要你赚你的证书在180天内。以会话为基础的课程可能要求你在截止日期前保持正轨，但如果你落后了，你可以切换到以后的会议，你完成的任何工作将与你转移。</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="article-right-box">
                        <div class="comment">
                            <!--<div class="tit">评论</div>-->
                            <div class="com-cont">
                                <div class="item">
                                    <div class="top-info"><img src="../img/widget-pic.png" width="30px" alt="">
                                        <div class="info">
                                            <p>毛老师</p>
                                            <p><i class="i-star"></i><i class="i-star"></i><i class="i-star"></i></p>
                                        </div>
                                        <div class="time">2017-2-19</div>
                                    </div>
                                    <div class="but-info"><span>有趣的课程，可以对函数式编程产生初步的认识，值的一学。获得的毕业证书……</span></div>
                                </div>
                                <div class="item">
                                    <div class="top-info"><img src="../img/widget-pic.png" width="30px" alt="">
                                        <div class="info">
                                            <p>毛老师</p>
                                            <p><i class="i-star"></i><i class="i-star"></i><i class="i-star"></i></p>
                                        </div>
                                        <div class="time">2017-2-19</div>
                                    </div>
                                    <div class="but-info"><span>有趣的课程，可以对函数式编程产生初步的认识，值的一学。获得的毕业证书值的一学。获得的毕业证……</span></div>
                                </div>
                                <div class="item">
                                    <div class="top-info"><img src="../img/widget-pic.png" width="30px" alt="">
                                        <div class="info">
                                            <p>毛老师</p>
                                            <p><i class="i-star"></i><i class="i-star"></i><i class="i-star"></i></p>
                                        </div>
                                        <div class="time">2017-2-19</div>
                                    </div>
                                    <div class="but-info"><span>有趣的课程，可以对函数式编程产生初步的认识，值的一学。获得的毕业证书……</span></div>
                                </div>
                                <div class="item">
                                    <div class="top-info"><img src="../img/widget-pic.png" width="30px" alt="">
                                        <div class="info">
                                            <p>毛老师</p>
                                            <p><i class="i-star"></i><i class="i-star"></i><i class="i-star"></i></p>
                                        </div>
                                        <div class="time">2017-2-19</div>
                                    </div>
                                    <div class="but-info"><span>有趣的课程，可以对函数式编程产生初步的认识，值的一学。获得的毕业证书……</span></div>
                                </div>
                                <div class="item">
                                    <div class="top-info"><img src="../img/widget-pic.png" width="30px" alt="">
                                        <div class="info">
                                            <p>毛老师</p>
                                            <p><i class="i-star"></i><i class="i-star"></i><i class="i-star"></i></p>
                                        </div>
                                        <div class="time">2017-2-19</div>
                                    </div>
                                    <div class="but-info"><span>有趣的课程，可以对函数式编程产生初步的认识，值的一学。获得的毕业证书……</span></div>
                                </div>
                                <div class="go-pingjia">213人评价 <a href="#">去评价 ></a></div>
                            </div>
                        </div>
                        <div class="learing-box">
                            <div class="tit">2313人在学习该课程</div>
                            <div class="com-cont">
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                                <a href="#" class="item">
                                    <p><img src="../img/widget-pic.png" width="30px" alt=""></p>
                                    <p>毛老师</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="articleItem" style="display: none">
                <div class="article-cont-catalog">
                    <div class="article-left-box">
                        <div class="content">
                            <div class="item">
                                <div class="title"><i class="i-chevron-bot"></i>第一阶段 HTTP协议基础详解<span class="time">8小时</span></div>
                                <div class="about">使用Java消息中间件处理异步消息成为了分布式系统中的必修课，通过本门课程可以深入浅出的学习如何在Java中使用消息中间件并且一步一步打造更优雅的最佳实践方案。</div>
                                <div class="drop-down">
                                    <ul class="list-box">
                                        <li class="active">1.1 阅读：分级政策细节 <span>97’33”</span></li>
                                        <li>1.2 视频：为什么分为 A 部分、B 部分、C 部分 <span>66’15”</span></li>
                                        <li>1.3 视频：软件安装介绍 <span>86’42”</span></li>
                                        <li>1.4 阅读：Emacs安装 <span>59’00”</span></li>
                                        <li>1.5 作业1：Emacs安装 <span>93’29”</span></li>
                                        <li>阶段测试</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="title"><i class="i-chevron-bot"></i>第二阶段 HTTP协议基础详解<span class="time">8小时</span></div>
                                <div class="about">使用Java消息中间件处理异步消息成为了分布式系统中的必修课，通过本门课程可以深入浅出的学习如何在Java中使用消息中间件并且一步一步打造更优雅的最佳实践方案。</div>
                                <div class="drop-down">
                                    <ul class="list-box">
                                        <li class="active">1.1 阅读：分级政策细节 <span>97’33”</span></li>
                                        <li>1.2 视频：为什么分为 A 部分、B 部分、C 部分 <span>66’15”</span></li>
                                        <li>1.3 视频：软件安装介绍 <span>86’42”</span></li>
                                        <li>1.4 阅读：Emacs安装 <span>59’00”</span></li>
                                        <li>1.5 作业1：Emacs安装 <span>93’29”</span></li>
                                        <li>阶段测试</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="title"><i class="i-chevron-bot"></i>第三阶段 HTTP协议基础详解<span class="time">3小时</span></div>
                                <div class="about">使用Java消息中间件处理异步消息成为了分布式系统中的必修课，通过本门课程可以深入浅出的学习如何在Java中使用消息中间件并且一步一步打造更优雅的最佳实践方案。</div>
                                <div class="drop-down">
                                    <ul class="list-box">
                                        <li class="active">1.1 阅读：分级政策细节 <span>97’33”</span></li>
                                        <li>1.2 视频：为什么分为 A 部分、B 部分、C 部分 <span>66’15”</span></li>
                                        <li>1.3 视频：软件安装介绍 <span>86’42”</span></li>
                                        <li>1.4 阅读：Emacs安装 <span>59’00”</span></li>
                                        <li>1.5 作业1：Emacs安装 <span>93’29”</span></li>
                                        <li>阶段测试</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="title"><i class="i-chevron-bot"></i>第四阶段 HTTP协议基础详解<span class="time">3小时</span></div>
                                <div class="about">使用Java消息中间件处理异步消息成为了分布式系统中的必修课，通过本门课程可以深入浅出的学习如何在Java中使用消息中间件并且一步一步打造更优雅的最佳实践方案。</div>
                                <div class="drop-down">
                                    <ul class="list-box">
                                        <li class="active">1.1 阅读：分级政策细节 <span>97’33”</span></li>
                                        <li>1.2 视频：为什么分为 A 部分、B 部分、C 部分 <span>66’15”</span></li>
                                        <li>1.3 视频：软件安装介绍 <span>86’42”</span></li>
                                        <li>1.4 阅读：Emacs安装 <span>59’00”</span></li>
                                        <li>1.5 作业1：Emacs安装 <span>93’29”</span></li>
                                        <li>阶段测试</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div class="title"><i class="i-chevron-bot"></i>第五阶段 HTTP协议基础详解<span class="time">3小时</span></div>
                                <div class="about">使用Java消息中间件处理异步消息成为了分布式系统中的必修课，通过本门课程可以深入浅出的学习如何在Java中使用消息中间件并且一步一步打造更优雅的最佳实践方案。</div>
                                <div class="drop-down">
                                    <ul class="list-box">
                                        <li class="active">1.1 阅读：分级政策细节 <span>97’33”</span></li>
                                        <li>1.2 视频：为什么分为 A 部分、B 部分、C 部分 <span>66’15”</span></li>
                                        <li>1.3 视频：软件安装介绍 <span>86’42”</span></li>
                                        <li>1.4 阅读：Emacs安装 <span>59’00”</span></li>
                                        <li>1.5 作业1：Emacs安装 <span>93’29”</span></li>
                                        <li>阶段测试</li>
                                    </ul>
                                </div>

                            </div>
                            <div class="item">
                                <a href="#" class="overwrite">毕业考核</a>
                            </div>
                        </div>
                    </div>
                    <div class="article-right-box">
                        <div class="about-teach">
                            <div class="teach-info">
                                <img src="../img/widget-pic.png" width="90px" alt="">
                                <div>
                                    <p>教学方：<span>毛老师</span></p>
                                    <p class="about">高级前端开发工程师10年开发经验</p>
                                </div>
                            </div>
                            <p><a href="#" class="">TA的课程</a></p>
                            <p class="synopsis">JavaEE开发与教学多年，精通JavaEE技术体系，对流行框架JQuery、DWR、Struts1/2，Hibernate，Spring，MyBatis、JBPM、Lucene等有深入研究。授课逻辑严谨，条理清晰，注重学生独立解决问题的能力。</p>
                        </div>
                        <div class="learing-box">
                            <div class="tit">看过该课的同学也在看</div>
                            <div class="item-box">
                                <div class="item-list hov">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记111</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Java消息中间件</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Hibernate Validator</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>ASP.NET-MVC网站开发</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Android架构模式详解之MVC…</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Java消息中间件</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Hibernate Validator</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>ASP.NET-MVC网站开发</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="artcleAsk" style="display: none">
                <div class="article-cont-ask">
                    <div class="article-left-box">
                        <div class="content">
                            <div class="content-title">
                                <p><a class="all">全部</a><a>精选</a><a>我的</a></p>
                                <p><a class="all">全部</a><span><a>1.1</a><a>1.2</a><a>1.3</a><a>1.4</a><a>1.5</a></span><a href="$" class="more">更多 <i class="i-chevron-bot"></i></a></p>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p class="title">如何用微服务重构应用程序?</p>
                                    <p><span>我来回答</span></p>
                                    <p>2017-3-20 <span><i></i>回答2</span><span><i></i>浏览2</span></p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p class="title">如何用微服务重构应用程序?</p>
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，仔细观察微服务的内容和时间是很重要的。以下两个要点将会对任何微服务重构策略产生重大影响。 【最新 <i class="new">心跳347890</i> 的回答】</p>
                                    <p>2017-3-20 <span class="action-box"><span><i class="i-answer"></i>回答 2</span><span><i class="i-browse"></i>浏览 12</span></span>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p class="title">如何用微服务重构应用程序?</p>
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，仔细观察微服务的内容和时间是很重要的。以下两个要点将会对任何微服务重构策略产生重大影响。 【最新 <i class="new">心跳347890</i> 的回答】</p>
                                    <p>2017-3-20 <span class="action-box"><span><i class="i-answer"></i>回答 2</span><span><i class="i-browse"></i>浏览 12</span></span>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p class="title">如何用微服务重构应用程序?</p>
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，仔细观察微服务的内容和时间是很重要的。以下两个要点将会对任何微服务重构策略产生重大影响。 【最新 <i class="new">心跳347890</i> 的回答】</p>
                                    <p>2017-3-20 <span class="action-box"><span><i class="i-answer"></i>回答 2</span><span><i class="i-browse"></i>浏览 12</span></span>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p class="title">如何用微服务重构应用程序?</p>
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，仔细观察微服务的内容和时间是很重要的。以下两个要点将会对任何微服务重构策略产生重大影响。 【最新 <i class="new">心跳347890</i> 的回答】</p>
                                    <p>2017-3-20 <span class="action-box"><span><i class="i-answer"></i>回答 2</span><span><i class="i-browse"></i>浏览 12</span></span>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p class="title">如何用微服务重构应用程序?</p>
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，仔细观察微服务的内容和时间是很重要的。以下两个要点将会对任何微服务重构策略产生重大影响。 【最新 <i class="new">心跳347890</i> 的回答】</p>
                                    <p>2017-3-20 <span class="action-box"><span><i class="i-answer"></i>回答 2</span><span><i class="i-browse"></i>浏览 12</span></span>
                                    </p>
                                </div>
                            </div>

                            <div class="itemlast">
                                <a href="#" class="overwrite">显示更多问题</a>
                            </div>
                        </div>
                    </div>
                    <div class="article-right-box">
                        <div class="question-butte"><i class="i-problem"></i>我有问题</div>
                        <div class="about-teach">
                            <div class="teach-info">
                                <img src="../img/widget-pic.png" width="90px" alt="">
                                <div>
                                    <p>教学方：<span>毛老师</span></p>
                                    <p class="about">高级前端开发工程师10年开发经验</p>
                                </div>
                            </div>
                            <p><a href="#" class="">TA的课程</a></p>
                            <p class="synopsis">JavaEE开发与教学多年，精通JavaEE技术体系，对流行框架JQuery、DWR、Struts1/2，Hibernate，Spring，MyBatis、JBPM、Lucene等有深入研究。授课逻辑严谨，条理清晰，注重学生独立解决问题的能力。</p>
                        </div>
                        <div class="learing-box">
                            <div class="tit">看过该课的同学也在看</div>
                            <div class="item-box">
                                <div class="item-list hov">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记111</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Java消息中间件</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Hibernate Validator</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>ASP.NET-MVC网站开发</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Android架构模式详解之MVC…</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Java消息中间件</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Hibernate Validator</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>ASP.NET-MVC网站开发</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="artcleNot" style="display: none;">
                <div class="article-cont-note">
                    <div class="article-left-box">
                        <div class="content">
                            <div class="content-title">
                                <p><a class="all">全部</a><a>精选</a><a>我的</a></p>
                                <p><a class="all">全部</a><span><a>1.1</a><a>1.2</a><a>1.3</a><a>1.4</a><a>1.5</a></span><a href="$" class="more">更多 <i class="i-chevron-bot"></i></a></p>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <span class="video-time"><i class="i-play"></i>2`10`</span>
                                    <p><img src="../img/widget-demo.png" width="221" alt=""></p>
                                    <p class="action-box">4小时前 <span class="active-box"><span><i class="i-coll"></i>采集</span><span><i class="i-laud"></i>赞</span></span>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，<br>仔细观察微服务的内容和时间是很重要的。<br>以下两个要点将会对任何微服务重构策略产生重大影响。 </p>
                                    <p class="action-box">4小时前 <span class="active-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></span>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，<br>仔细观察微服务的内容和时间是很重要的。<br>以下两个要点将会对任何微服务重构策略产生重大影响。 </p>
                                    <p class="action-box">4小时前 <span class="active-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></span>
                                    </p>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-left">
                                    <p><img src="../img/widget-myImg.jpg" width="60px" alt=""></p>
                                    <p>毛老师</p>
                                </div>
                                <div class="item-right">
                                    <p>在讨论如何将重构转化为微服务之前，退后一步，<br>仔细观察微服务的内容和时间是很重要的。<br>以下两个要点将会对任何微服务重构策略产生重大影响。 </p>
                                    <p class="action-box">4小时前 <span class="active-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="article-right-box">
                        <div class="question-butte"><i class="i-node"></i>发布笔记</div>
                        <div class="about-teach">
                            <div class="teach-info">
                                <img src="../img/widget-pic.png" width="90px" alt="">
                                <div>
                                    <p>教学方：<span>毛老师</span></p>
                                    <p class="about">高级前端开发工程师10年开发经验</p>
                                </div>
                            </div>
                            <p><a href="#" class="">TA的课程</a></p>
                            <p class="synopsis">JavaEE开发与教学多年，精通JavaEE技术体系，对流行框架JQuery、DWR、Struts1/2，Hibernate，Spring，MyBatis、JBPM、Lucene等有深入研究。授课逻辑严谨，条理清晰，注重学生独立解决问题的能力。</p>
                        </div>
                        <div class="learing-box">
                            <div class="tit">看过该课的同学也在看</div>
                            <div class="item-box">
                                <div class="item-list hov">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记111</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Java消息中间件</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Hibernate Validator</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>ASP.NET-MVC网站开发</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Android架构模式详解之MVC…</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Web前端攻城狮培养计划</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Linux 达人养成记</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Java消息中间件</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>Hibernate Validator</a>
                                    </div>
                                </div>
                                <div class="item-list">
                                    <div class="infobox">
                                        <div class="morebox">
                                            <p class="top-tit">前端小白入门</p>
                                            <p class="top-lab">Java消息中间件</p>
                                            <p class="top-num">2589646次播放<span>4.8分</span></p>
                                        </div>
                                        <a>ASP.NET-MVC网站开发</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="artcleCod" style="display: none;">
                <div class="article-cont">
                    <div class="article-left-box">
                        <div class="comment-box">
                            <div class="evaluate">
                                <div class="eva-top">
                                    <div class="tit">课程评分 </div>
                                    <div class="star">
                                        <div class="score"><i>5</i></div>
                                    </div><span class="star-score"> <i>5</i> 分</span></div>
                                <div class="eva-cont">
                                    <div class="tit">学员评语 </div>
                                    <div class="text-box">
                                        <textarea class="form-control" rows="5" placeholder="扯淡、吐槽、表扬、鼓励......想说啥说啥！"></textarea>
                                        <div class="text-right"><span>发表评论</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="course-evaluate">
                                <div class="top-tit">评论
                                    <span>
                        <label><input name="eval" type="radio" value="" checked /> 所有学生 </label>
                        <label><input name="eval" type="radio" value="" /> 完成者 </label>
                    </span>
                                </div>
                                <div class="top-cont">
                                    <div class="cont-top-left">
                                        <div class="star-scor">
                                            <div class="star-show">
                                                <div class="score"><i>5</i></div>
                                            </div>
                                            <div class="scor">4.9分</div>
                                        </div>
                                        <div class="all-scor">总评分：12343</div>
                                    </div>
                                    <div class="cont-top-right">
                                        <div class="star-grade">五星
                                            <div class="grade">
                                                <div class="grade-percent"><span></span></div>
                                                <div class="percent-num"><i>95</i>%</div>
                                            </div>
                                        </div>
                                        <div class="star-grade">四星
                                            <div class="grade">
                                                <div class="grade-percent"><span></span></div>
                                                <div class="percent-num"><i>5</i>%</div>
                                            </div>
                                        </div>
                                        <div class="star-grade">三星
                                            <div class="grade">
                                                <div class="grade-percent"><span></span></div>
                                                <div class="percent-num"><i>0</i>%</div>
                                            </div>
                                        </div>
                                        <div class="star-grade">二星
                                            <div class="grade">
                                                <div class="grade-percent"><span></span></div>
                                                <div class="percent-num"><i>2</i>%</div>
                                            </div>
                                        </div>
                                        <div class="star-grade">一星
                                            <div class="grade">
                                                <div class="grade-percent"><span></span></div>
                                                <div class="percent-num"><i>1</i>%</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-item-box">
                                    <div class="title">评论 <span>12453条评论</span></div>
                                    <div class="item">
                                        <div class="item-left">
                                            <p><img src="../img/widget-pic.png" width="60px" alt=""></p>
                                            <p>毛老师</p>
                                        </div>
                                        <div class="item-cent">
                                            <p>很受用，如果再深入下就更好了。虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！</p>
                                            <p class="time">2017-2-43</p>
                                        </div>
                                        <div class="item-rit">
                                            <p>
                                                <div class="star-show">
                                                    <div class="score"><i>4</i></div>
                                                </div>
                                            </p>
                                            <p>评分 <span>5星</span></p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-left">
                                            <p><img src="../img/widget-pic.png" width="60px" alt=""></p>
                                            <p>毛老师</p>
                                        </div>
                                        <div class="item-cent">
                                            <p>很受用，如果再深入下就更好了。虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！</p>
                                            <p class="time">2017-2-43</p>
                                        </div>
                                        <div class="item-rit">
                                            <p>
                                                <div class="star-show">
                                                    <div class="score"><i>5</i></div>
                                                </div>
                                            </p>
                                            <p>评分 <span>5星</span></p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-left">
                                            <p><img src="../img/widget-pic.png" width="60px" alt=""></p>
                                            <p>毛老师</p>
                                        </div>
                                        <div class="item-cent">
                                            <p>很受用，如果再深入下就更好了。虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！</p>
                                            <p class="time">2017-2-43</p>
                                        </div>
                                        <div class="item-rit">
                                            <p>
                                                <div class="star-show">
                                                    <div class="score"><i>5</i></div>
                                                </div>
                                            </p>
                                            <p>评分 <span>5星</span></p>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-left">
                                            <p><img src="../img/widget-pic.png" width="60px" alt=""></p>
                                            <p>毛老师</p>
                                        </div>
                                        <div class="item-cent">
                                            <p>很受用，如果再深入下就更好了。虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！虽然都是入门级别的，但是也很使用，后续就需要自己发挥了！</p>
                                            <p class="time">2017-2-43</p>
                                        </div>
                                        <div class="item-rit">
                                            <p>
                                                <div class="star-show">
                                                    <div class="score"><i>5</i></div>
                                                </div>
                                            </p>
                                            <p>评分 <span>5星</span></p>
                                        </div>
                                    </div>
                                    <div class="get-more">页面加载中...</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="article-right-box">
                        <div class="about-teach">
                            <div class="teach-info">
                                <img src="../img/widget-pic.png" width="90px" alt="">
                                <div>
                                    <p>教学方：<span>毛老师</span></p>
                                    <p class="about">高级前端开发工程师10年开发经验</p>
                                </div>
                            </div>
                            <p><a href="#" class="">TA的课程</a></p>
                            <p class="synopsis">JavaEE开发与教学多年，精通JavaEE技术体系，对流行框架JQuery、DWR、Struts1/2，Hibernate，Spring，MyBatis、JBPM、Lucene等有深入研究。授课逻辑严谨，条理清晰，注重学生独立解决问题的能力。</p>
                        </div>
                        <div class="learing-box">
                            <div class="tit">看过该课的同学也在看</div>
                            <div class="item-box">
                                <div class="item-top">
                                    <p class="top-tit">前端小白入门</p>
                                    <p class="top-lab">Web前端攻城狮培养计划</p>
                                    <p class="top-num">2589646次播放<span>4.8分</span></p>
                                </div>
                                <div class="item-list">
                                    <a>Linux 达人养成记</a>
                                    <a>Java消息中间件</a>
                                    <a>Hibernate Validator</a>
                                    <a>ASP.NET-MVC网站开发</a>
                                    <a>Android架构模式详解之MVC…</a>
                                    <a>Linux 达人养成记</a>
                                    <a>Java消息中间件</a>
                                    <a>Hibernate Validator</a>
                                    <a>ASP.NET-MVC网站开发</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="popup-box">
        <div class="mask"></div>
        <!--欢迎访问课程弹窗- start -->
        <div class="popup-course-box">
            <div class="title">程序设计语言 <span class="close-popup">×</span></div>
            <div class="content">
                <p>欢迎学习本课程，您现在可以访问课程材料了。</p>
                <p><a href="#">开始学习</a></p>
            </div>
        </div>
        <!--欢迎访问课程弹窗- end -->

        <!--支付弹窗- start -->
        <div class="popup-pay-box">
            <div class="title">程序设计语言 <span class="close-popup">×</span></div>
            <div class="content">
                <img src="./text.png" alt="">
                <div class="info">
                    <p class="info-tit">程序语言设计 <span>课程有效期:2017年9月12日-2018年9月11日</span></p>
                    <p class="info-pic">课程价格 : <span>￥1999</span></p>
                    <p class="info-new-pic">优惠价格 : <span>￥999</span></p>
                </div>
            </div>
            <div class="fact-pic">实际支付: <span>￥999</span></div>
            <div class="go-pay"><a href="">去支付</a><a class="addCar" href="">加入购物车</a></div>
        </div>
        <!--支付弹窗- end -->
        <div class="popup-comment-box">

        </div>
    </div>
    <!-- 页面底部 -->
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

    <!-- 页面 css js -->
    <script type="text/javascript" src="../plugins/jquery/dist/jquery.js"></script>
    <script type="text/javascript" src="../plugins/bootstrap/dist/js/bootstrap.js"></script>
    <script>
        $('.vid-act').click(function() {
            $(this).find('.i-heart').css('background-position', '4px -55px')
        })


        $(function() {
            //点击下拉
            //用法：HTML 点击事件为more,父级使用overflow：hidden；限定高 more与要展开的内容为同级 要展开内容添加 drop-down的class
            function ckMove(target, ckgar, het, text, incr) {
                var inc = incr ? incr : 0;
                $(target).find(ckgar).on('click', function() {
                    var h = $(this).parent().find('.drop-down ul').height();
                    if (!$(this).hasClass('act')) {
                        $(this).addClass('act');
                        $(this).parent().find('.drop-down').css({
                            'height': (h + inc) + 'px'
                        });
                        $(this).find('i').removeClass('i-chevron-bot').addClass('i-chevron-top')
                    } else {
                        $(this).removeClass('act');
                        $(this).parent().find('.drop-down').css({
                            'height': het + 'px'
                        });
                        $(this).find('i').removeClass('i-chevron-top').addClass('i-chevron-bot')
                    }
                })
            }
            ckMove('.article-cont .article-left-box', '.title', 0);

            $('.learing-box .item-list').mouseover(function(e) {
                $(this).css({
                    'height': '140px'
                }).addClass('hov').siblings().css({
                    'height': '50px'
                })
                $(this).siblings().removeClass('hov')
            })
            $('.learing-box .item-box').mouseout(function() {
                $(this).find('.item-list:first').css({
                    'height': '140px'
                }).addClass('hov')
                $(this).find('.item-list:first').siblings().css({
                    'height': '50px'
                }).removeClass('hov')
            })
        })


        $(function() {
            $('.learing-box .item-list').mouseover(function(e) {
                $(this).css({
                    'height': '140px'
                }).addClass('hov').siblings().css({
                    'height': '50px'
                })
                $(this).siblings().removeClass('hov')
            })
            $('.learing-box .item-box').mouseout(function() {
                $(this).find('.item-list:first').css({
                    'height': '140px'
                }).addClass('hov')
                $(this).find('.item-list:first').siblings().css({
                    'height': '50px'
                }).removeClass('hov')
            })
        })


        $(function() {
            $('.active-box span').click(function() {
                $(this).css({
                    'color': '#00a4ff'
                })
                if ($(this).find('i').hasClass('i-laud')) {
                    $(this).find('.i-laud').css('background-position', '-80px -19px')
                } else if ($(this).find('i').hasClass('i-coll')) {
                    $(this).find('.i-coll').css('background-position', '1px -75px')
                }
            })
            $('.learing-box .item-list').mouseover(function(e) {
                $(this).css({
                    'height': '140px'
                }).addClass('hov').siblings().css({
                    'height': '50px'
                })
                $(this).siblings().removeClass('hov')
            })
            $('.learing-box .item-box').mouseout(function() {
                $(this).find('.item-list:first').css({
                    'height': '140px'
                }).addClass('hov')
                $(this).find('.item-list:first').siblings().css({
                    'height': '50px'
                }).removeClass('hov')
            })
        })


        $(function() {
            //评分
            $('.star .score').map(function(n, i) {
                var x = Number($(this).find('i').text());
                var w = 109 * (1 - x / 5);
                $(this).css('width', w + 'px');
            })
            //评论打分
            $('.evaluate .star').mousemove(function(e) {
                var startX = $(this).offset().left;
                var movX = e.clientX - startX + 0.5;
                var w = 145 * (1 - movX / 145);
                $(this).find('.score').css('width', w + 'px');
                $('.star-score i').text((movX / 145 * 5).toFixed(1))
            })
            //星级评分
            $('.grade').map(function(n, i) {
                var pret = $(this).find('.percent-num i').text();
                var wt = $(this).find('.grade-percent').width();
                $(this).find('.grade-percent span').css('width', wt * pret / 100);
            })



        })


        $(function() {
            //点击下拉
            function ckMove(target, het, text, incr) {
                var inc = incr ? incr : 0;
                $(target).find('.on-off').on('click', function() {
                    var h = $(this).parent().find('.drop-down p').height();
                    if (!$(this).hasClass('act')) {
                        $(this).addClass('act');
                        $(this).parent().find('.drop-down').css({
                            'height': (h + inc) + 'px'
                        });
                        $(this).find('i').removeClass('i-chevron-bot').addClass('i-chevron-top')
                    } else {
                        $(this).removeClass('act');
                        $(this).parent().find('.drop-down').css({
                            'height': het + 'px'
                        });
                        $(this).find('i').removeClass('i-chevron-top').addClass('i-chevron-bot')
                    }
                })
            }
            ckMove('.cktop', 60);
            ckMove('.cont .item', 0);
            //点击关闭弹窗
            $('.close-popup').click(function() {
                $('.popup-box').hide();
            })
            $('.tit-list a').click(function() {
                $(this).addClass('active').siblings().removeClass('active');
                var clasNod = '.' + $(this)[0].id
                $(clasNod).show().siblings().hide()
            })
            // 资料下载
            $('.down-fill span').click(function() {
                $('.down-fill ul').css({
                    display: 'block'
                });
            })
            $('.down-fill ul li').click(function() {
                $('.down-fill ul').css({
                    display: 'none'
                });
            })
        })
    </script>
</body>