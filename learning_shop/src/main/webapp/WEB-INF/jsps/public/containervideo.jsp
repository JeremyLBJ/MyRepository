<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="container">
                        <div class="tit">
                            <span class="active" id="txt">字幕</span><span id="not" onclick="findAllNote()">笔记</span><span id="asks">问答</span><span id="code">代码</span>
                        </div>
                        <div class="content">
                            <div class="txt" style="display: block;">
                                <div class="article-subtitle-cont">
                                    <div class="search-area">
                                        <input type="text" class="search-area nav-justified" placeholder="搜索文字字幕" value="">
                                    </div>
                                    <div class="video-textes">
                                        <li><span>0：00</span>[音乐]最后一个主题，我想涵盖的介绍材料，在我们真正开始的过程，并开始在这个惊人的旅程，只是一个高层次的纲要，我们要去。我想这是可选的，因为，首先，它是罚款，只要开始，看看我们要去那里，我们到达那里。但也因为没有办法讨论的过程中，在短短几分钟内没有使用一堆术语和术语，我不希望你知道。整个过程的重点是让你了解这些事情，我恨你看这个视频，认为，我不知道他在走动，我想我不应该继续下去，当这就是为什么你应该继续。</li>
                                        <li><span>4：00</span>这样你就可以了解所有这些事情，我们将解释一件一次。有了这一点，让我们给概述，以防你看到这些东西之前，想知道，我要去一些新的东西，或者我听说我真的想了解一些东西，这是要来了吗？我当然不会列出这里的每一个主题。有太多，有很多星期价值的东西，但在一个非常高的水平。这部分的合唱，我们要做的功能性编程的基础知识，EMA的静态类型的语言，即ML.首先是基础知识，如变量和范围、数量和加。不要担心，当然你以前见过，但在编程之前，但在一个精确的方式。我们将建立功能，我喜欢的方法，但没有对象，如果你看到面向对象编程。我们要做递归，实际上这是我们要写计算以及其他计算的方式。我们要建立更大的数据结构的元组和列表的方式。这将是第一节。因此，与软件安装的东西，这是一个公平的数额，特别是在一个不寻常的环境。所以我们给额外的时间，这真的像你有两倍长的那一节，为那些跟随。</li>
                                        <li><span>9:54</span>之后，第二节是所有关于数据类型和模式匹配。这是一种新的方式，你们大多数人以前没有见过，以代表更大的数据结构，模型不同的数据</li>
                                        <li><span>10：30</span>我想涵盖的介绍材料，在我们真正开始的过程，并开始在这个惊人的旅程，只是一个高层次的纲要，我们要去。我想这是可选的，因为，首先，它是罚款，只要开始，看看我们要去那里，我们到达那里。但也因为没有办法讨论的过程中，在短短几分钟内没有使用一堆术语和术语，我不希望你知道。整个过程的重点是让你了解这些事情，我恨你看这个视频，认为，我不知道他在走动，我想我不应该继续下去，当这就是为什么你应该继续。</li>
                                        <li><span>14：00</span>这样你就可以了解所有这些事情，我们将解释一件一次。有了这一点，让我们给概述，以防你看到这些东西之前，想知道，我要去一些新的东西，或者我听说我真的想了解一些东西，这是要来了吗？我当然不会列出这里的每一个主题。有太多，有很多星期价值的东西，但在一个非常高的水平。这部分的合唱，我们要做的功能性编程的基础知识，EMA的静态类型的语言，即ML.首先是基础知识，如变量和范围、数量和加。不要担心，当然你以前见过，但在编程之前，但在一个精确的方式。我们将建立功能，我喜欢的方法，但没有对象，如果你看到面向对象编程。我们要做递归，实际上这是我们要写计算以及其他计算的方式。我们要建立更大的数据结构的元组和列表的方式。这将是第一节。因此，与软件安装的东西，这是一个公平的数额，特别是在一个不寻常的环境。所以我们给额外的时间，这真的像你有两倍长的那一节，为那些跟随。</li>
                                        <li><span>19:54</span>之后，第二节是所有关于数据类型和模式匹配。这是一种新的方式，你们大多数人以前没有见过，以代表更大的数据结构，模型不同的数据。。</li>
                                    </div>
                                    <div><a href="#" class="btn btn-primary pull-right">下一项</a></div>
                                </div>

                            </div>
                            <div class="not" style="display: none;">
                                <div class="article-cont-note">
                                    <div class="article-left-box">
                                        <div class="content">
                                            <div class="content-title">
                                                <p><a class="all" id="all">全部</a><a id="choiceness">精选</a><a id="myNotes">我的</a></p>
                                                <p><a class="all">全部</a><span><a>1.1</a><a>1.2</a><a>1.3</a><a>1.4</a><a>1.5</a></span><a href="$" class="more">更多 <i class="i-chevron-bot"></i></a></p>
                                            </div>
                                            
                                            <div class="item" id="noteItems">
                                               
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
                            <div class="asks" style="display: none;">
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
                            <div class="code" style="display: none;">
                                <div class="article-cont-code">
                                    <div class="article-left-box">
                                        <div class="content">
                                            <div class="content-title">
                                                <p><a href="#" class="all">全部</a><a href="#">精选</a><a href="#">我的</a></p>
                                            </div>

                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="item-left">
                                                    <img src="../img/widget-myImg.jpg" width="60px" class="touxiang" alt=""> <span class="name">毛老师老师说了</span> <img src="../img/widget-codeico.png" alt=""> <span class="action-info">2017-12-4 <span class="action"><span><i class="i-laud"></i>赞</span></span>
                                                    </span>
                                                    <p class="mask"></p>
                                                    <pre>
    <code data-language="javascript">
    import Musician from './liverpool';
    class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
        class Paul extends Musician {
        constructor(bass) {
            super(bass);
        }
        get fullName() {
            return 'Paul McCartney';
        }
        perform() {
            this.play(this.instrument);
            this.sing();
        }
    }
    export default Paul;
    </code>
</pre>
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
                        </div>
                    </div>
                    <script type="text/javascript">
                    function findAllNote(){
                    	$.post("findAllNote",function(data){
                    		console.log(data);
                			showData(data);
                		})
                    }
                    	//查看所有笔记
                    	$('#all').click(function(){
                    		$.post("findAllNote",function(data){
                    			showData(data);
                    		})
                    	});
                    	//精选笔记
                    	$('#choiceness').click(function(){
                    		$.post("choiceness",function(data){
                    			showData(data);
                    		});
                    	});
                    	//我的笔记
                    	$('#myNotes').click(function(){
                    		$.post("findAllNotes",function(data){
                    			showData(data);
                    		})	
                    		
                    	});
                    	function showData(data){
                    		$("#noteItems").html(''); 
                    		var index = (data.data.length);
    						var str = "";
    						for(var i = 0 ; i < index ; i++){
    							if(null==(data.data[i].userNotes[0]) || '' ==(data.data[i].userNotes[0])){
    								break;
    							}
    							str+="<div class='item'>"+
                                    "<div class='item-left'>"+
                                    "<p><img src='../img/widget-myImg.jpg' width='60px' alt=''></p>"+
                                    "<p>"+data.data[i].username+"</p></div>"+
                                    "<div class='item-right'>"+
                                    "<p>"+data.data[i].userNotes[0].content+"</p>"+
                                    "<p class='action-box'>4小时前 <span class='active-box'>"+
                                    "<span><i class='i-edt'></i>编辑</span><span>"+
                                    "<i class='i-del' onclick='deleteById("+data.data[i].userNotes[0].id+")'></i>删除</span><span><i class='i-laud'></i>赞</span></span>"+
                                    "</p></div></div>";
    						}
    						$("#noteItems").html(str); 
                    	}
                    	//根据笔记表id删除
                    	function deleteById(id){
                    		alert(1);
                    		if(null == id || '' == id){
                    			return null;
                    		}
                    		$.post("deleteById",{id:id},function(data){
                    			console.log(data);
                    		})
                    	}
                    </script>
</head>

