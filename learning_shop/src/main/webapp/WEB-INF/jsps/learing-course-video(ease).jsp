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

    <link rel="stylesheet" href="/plugins/rainbow.css" />
    <link rel="stylesheet" href="../css/page-learing-course-videoes.css" />
    <link rel="stylesheet" href="../plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.css" />
</head>

<body>
    <!-- 页面头部 -->
    <div class="learing-course">
        <div>
            <div class="course-cont">
                <div class="course-cont-top-video" style="position: relative;">
                    <div class="video-box">
                        <div class="top text-center">
                            < 为什么分为 A 部分、B 部分、C 部分>
                                <!--<i class="glyphicon glyphicon-book pull-right"></i>-->
                                <!--<div class="resources">-->
                                <!--<div class="resou-box">-->
                                <!--<div class="resources-tit"><i class="glyphicon glyphicon-folder-close"></i>课程资源</div>-->
                                <!--<div class="tit">课程材料</div>-->
                                <!--<div><i class="glyphicon glyphicon-floppy-save"></i>软件安装包</div>-->
                                <!--<div class="tit">其他</div>-->
                                <!--<div><i class="glyphicon glyphicon-download-alt"></i>字幕下载</div>-->
                                <!--<div><i class="glyphicon glyphicon-flag"></i>报告问题</div>-->
                                <!--</div>-->
                                <!--</div>-->
                        </div>
                        <div class="video text-center" style="padding-right: 55px;">
                            <div class="video-mine">
                                <div class="cls-text"><a class="media" href="./../plugins/js-pdf/NodeJSDeveloperGuid.pdf"></a></div>
                                <div class="cls-video">
                                    <div id="vdplay"></div>
                                    <div class="vdControl">
                                        <!--<div class="play" onclick="vdPlay()">播放</div>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="course-nav">
                            <div class="nav-stacked text-center">
                                <li class="nav"><a href="javascript:;" class="glyphicon glyphicon-list-alt"><span>目录</span></a></li>
                                <li class="lab-note"><a href="javascript:;" class="glyphicon glyphicon-user"><span>笔记</span></a></li>
                                <li class="lab-ask"><a href="javascript:;" class="glyphicon glyphicon-cog"><span>问答</span></a></li>
                                <li class="lab-com"><a href="javascript:;" class="glyphicon glyphicon-duplicate"><span>评论</span></a></li>
                            </div>
                        </div>
                        <div class="note">
                            <div class="note-box">
                                <div class="note-lab"><span class="active">我的笔记</span><span>精选笔记</span></div>
                                <div class="note-item-cont">
                                    <div class="my-note">
                                        <div class="textarea-box">
                                            <textarea name="my-note" id=""></textarea>
                                            <div class="info"><span class="time"><i class="i-play"></i>23`22` </span><span class="not-but">提交</span></div>
                                        </div>
                                        <ul class="my-item-box">
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="#" class="more">查看更多</a>
                                    </div>
                                    <div class="sel-note">
                                        <ul class="my-item-box">
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="time"><i class="i-play"></i>23`22` </span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="#" class="more">查看更多</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="ask">
                            <div class="ask-box">
                                <div class="note-lab"><span class="active">我的问答</span><span>精选问答</span></div>
                                <div class="note-item-cont">
                                    <div class="my-note">
                                        <div class="textarea-box">
                                            <input type="text" class="ask-title" value="" placeholder="请输入问题标题">
                                            <textarea name="my-note" id="" placeholder="请输入问题描述"></textarea>
                                            <div class="info"><span class="pic" onclick="screenshot()">截图 </span><span class="not-but">保存</span></div>
                                        </div>
                                        <ul class="my-item-box">
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-29</span>
                                                    <div class="oper-box"><span><i class="i-edt"></i>编辑</span><span><i class="i-del"></i>删除</span><span><i class="i-laud"></i>赞</span></div>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="#" class="more">查看更多</a>
                                    </div>
                                    <div class="sel-note">
                                        <ul class="my-item-box">
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span><span class="our-answer">我来回答</span></div>
                                                <div class="tit">这个是我想问的问题</div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>4 小时前</span>
                                                    <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="#" class="more">查看更多</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="com">
                            <div class="com-box">
                                <!--<div class="note-lab"><span class="active">我的问答</span><span>精选问答</span></div>-->
                                <div class="note-item-cont">
                                    <div class="my-note">
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
                                        <!--<div class="textarea-box">-->
                                        <!--<input type="text" class="ask-title" value="" placeholder="请输入问题标题">-->
                                        <!--<textarea name="my-note" id=""  placeholder="请输入问题描述"></textarea>-->
                                        <!--<div class="info"><span class="pic" onclick="screenshot()">截图 </span><span class="not-but">保存</span></div>-->
                                        <!--</div>-->
                                        <ul class="my-item-box">
                                            <li>
                                                <div>
                                                    <span><img src="../img/asset-vid.png" alt=""></span>
                                                    <span class="name">王老师</span>
                                                    <div class="item-rit">
                                                        <div class="star-show">
                                                            <div class="score"><i>4</i></div>
                                                        </div>
                                                        <div class="showSt">评分 <span>5星</span></div>
                                                    </div>
                                                </div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-23</span>
                                                    <div class="oper-box"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <span><img src="../img/asset-vid.png" alt=""></span>
                                                    <span class="name">王老师</span>
                                                    <div class="item-rit">
                                                        <div class="star-show">
                                                            <div class="score"><i>4</i></div>
                                                        </div>
                                                        <div class="showSt">评分 <span>5星</span></div>
                                                    </div>
                                                </div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-23</span>
                                                    <div class="oper-box"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <span><img src="../img/asset-vid.png" alt=""></span>
                                                    <span class="name">王老师</span>
                                                    <div class="item-rit">
                                                        <div class="star-show">
                                                            <div class="score"><i>4</i></div>
                                                        </div>
                                                        <div class="showSt">评分 <span>5星</span></div>
                                                    </div>
                                                </div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-23</span>
                                                    <div class="oper-box"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <span><img src="../img/asset-vid.png" alt=""></span>
                                                    <span class="name">王老师</span>
                                                    <div class="item-rit">
                                                        <div class="star-show">
                                                            <div class="score"><i>4</i></div>
                                                        </div>
                                                        <div class="showSt">评分 <span>5星</span></div>
                                                    </div>
                                                </div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-23</span>
                                                    <div class="oper-box"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <span><img src="../img/asset-vid.png" alt=""></span>
                                                    <span class="name">王老师</span>
                                                    <div class="item-rit">
                                                        <div class="star-show">
                                                            <div class="score"><i>4</i></div>
                                                        </div>
                                                        <div class="showSt">评分 <span>5星</span></div>
                                                    </div>
                                                </div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-23</span>
                                                    <div class="oper-box"></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div>
                                                    <span><img src="../img/asset-vid.png" alt=""></span>
                                                    <span class="name">王老师</span>
                                                    <div class="item-rit">
                                                        <div class="star-show">
                                                            <div class="score"><i>4</i></div>
                                                        </div>
                                                        <div class="showSt">评分 <span>5星</span></div>
                                                    </div>
                                                </div>
                                                <div class="cont">
                                                    课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                                </div>
                                                <div class="operation"><span>2017-2-23</span>
                                                    <div class="oper-box"></div>
                                                </div>
                                            </li>
                                        </ul>
                                        <a href="#" class="more">查看更多</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="navCont">
                            <div class="course-weeklist">
                                <div class="nav nav-stacked">
                                    <div class="tit nav-justified text-center"><i class="pull-left glyphicon glyphicon-th-list"></i>第一周软件安装 <i class="pull-right">1/4</i></div>
                                    <li><i class="glyphicon glyphicon-check"></i>分级政策细分 <span>视</span></li>
                                    <li><i class="glyphicon glyphicon-unchecked"></i>为什么分为A、B、C部分</li>
                                    <li><i class="glyphicon glyphicon-unchecked"></i>软安装介绍</li>
                                    <li><i class="glyphicon glyphicon-unchecked"></i>Emacs安装 <span>阅</span></li>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="subtitle-cont">
                    <div class="container">
                        <div class="tit">
                            <span class="active" id="txt">字幕</span><span id="not">笔记</span><span id="asks">问答</span><span id="code">代码</span><span id="comment">评论</span>
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
                            <div class="comment" style="display: none;">
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
                    <div class="popup">
                        <div class="mask"></div>
                        <div class="content">
                            <div class="title">问题回答 <span class="clone glyphicon glyphicon-remove"></span></div>
                            <div class="set-item">
                                <div class="ask-info">
                                    <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师</span></div>
                                    <div class="tit">这个是我想问的问题</div>
                                    <div class="cont">
                                        课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                    </div>
                                    <div class="operation"><span>4 小时前  源自：C++基础课程</span>
                                        <div class="oper-box"><span>回答 2</span><span>浏览 4</span></div>
                                    </div>
                                </div>
                                <ul class="my-item-box">
                                    <li>
                                        <div><span><img src="../img/asset-vid.png" alt=""></span><span class="name">王老师 <em>4小时前</em></span><span class="our-answer"><span class="hf-onck"><i class="glyphicon glyphicon-comment"></i> 回复</span> <span><i class="glyphicon glyphicon-thumbs-up"></i> 0</span></span>
                                        </div>
                                        <div class="cont">
                                            课程内容 消息回复接口（图文,语音消息的自动回复） 素材管理接口（图片上传） 自定义菜单接口（菜单的创建，查询，删除）
                                        </div>
                                        <div class="hf-answer">
                                            <textarea class="form-control" rows="3" placeholder="输入回复内容..."></textarea>
                                            <div class="but-item"><span class="sub">提交</span><span class="can">取消</span></div>
                                        </div>
                                    </li>
                                </ul>
                                <div class="answer-box">
                                    <textarea class="form-control" rows="3" placeholder="输入回答内容..."></textarea>
                                    <div><span class="submit-ans">提交</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- 页面底部 -->
        <!-- 页面 css js -->

        <script type="text/javascript" src="../plugins/jquery/dist/jquery.js"></script>
        <script type="text/javascript" src="../plugins/js-pdf/jquery.media.js"></script>
        <script type="text/javascript" charset="utf-8" src="../plugins/ckplayer/ckplayer.js"></script>
        <script type="text/javascript">
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
        </script>
        <script type="text/javascript" src="/plugins/rainbow-custom.min.js"></script>
        <script type="text/javascript">
            $(function() {
                //代码点击显示
                $(".item .item-left").click(function() {
                    var pre = $(this).parent();
                    if (!pre.find('pre').hasClass('code-pop')) {
                        pre.find('pre').addClass('code-pop');
                        pre.find('.mask,pre').css('display', 'block')
                    } else {
                        pre.find('pre').removeClass('code-pop');
                        pre.find('.mask,pre').css('display', 'none')
                    }
                });
                //代码切换
                $('.content-title p a').click(function() {
                    $(this).addClass('all').siblings().removeClass('all');
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


            //文本学习 PDF
            $(function() {
                $('.cls-text a.media').media({
                    width: '100%',
                    height: '100%'
                });
            });
            // 视频播放器
            var flashvars = {
                f: 'http://img.ksbbs.com/asset/Mon_1605/0ec8cc80112a2d6.mp4',
                c: 0,
                b: 1,
                i: 'http://www.ckplayer.com/static/images/cqdw.jpg', //这里注意图片路径 默认未加载出视频时显示图
                loaded: 'loadedHandler'
            };

            var params = {
                bgcolor: '#FFF',
                allowFullScreen: true,
                allowScriptAccess: 'always',
                wmode: 'transparent'
            };
            CKobject.embedSWF('../../../dist/plugins/ckplayer/ckplayer.swf', 'vdplay', 'ckplayer_a1', '100%', '100%', flashvars, params);

            var video = ['http://img.ksbbs.com/asset/Mon_1605/0ec8cc80112a2d6.mp4->video/mp4'];
            var support = ['iPad', 'iPhone', 'ios', 'android+false', 'msie10+false'];
            CKobject.embedHTML5('vdplay', 'ckplayer_a1', '100%', '100%', video, flashvars, support);

            //html5播放控制
            var vdCont = CKobject.getObjectById('ckplayer_a1')
            var times = 0
            var type = ''

            function vdPlay() {
                if (type !== 'pause') {
                    vdCont.videoPlay();
                } else {
                    vdCont.videoPause();
                }
            }
            // 在线发送！
            $('.online-submit').click(function() {
                var cont = $('.online-cont').val()
                $('.chat-box').append('<li class="rt"><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221250282&di=33dec77d7966a70bb1edef24cc93692d&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D593340121%2C2144442477%26fm%3D214%26gp%3D0.jpg" width="30" alt=""></span>' + cont + '</li>')
                $('.online-cont').val('')
            })
            //获取播放当前时间
            function ckplayer_status(str) {
                var stres = str.split(':')
                type = str;
                if (stres.length === 2) {
                    times = stres[1]
                }
            }
            // tab切换
            $('.subtitle-cont .tit span').click(function() {
                swiTab($(this).attr('id'))
            })
            // tab切换  及  问题 代码点击函数
            function swiTab(obj) {
                console.log(obj)
                if (obj) {
                    $('#' + obj).addClass('active').siblings().removeClass('active');
                    var clasNod = '.' + obj
                } else {
                    $(this).addClass('active').siblings().removeClass('active');
                    var clasNod = '.' + $(this)[0].id
                }
                window.location = '#txt'
                $('.subtitle-cont').find(clasNod).show().siblings().hide()
            }

            //截图  //通过ajax提交 当前播放时间给后台 后台用软件截图 返回图片路径
            function screenshot() {
                var dataes = [times]
                //    $.ajax({
                //      url: "test.html",
                //      data: dataes,
                //      success: function(){
                //        $(this).addClass("done");
                //      }
                //    });
            }
            // 关闭
            $('.clone').click(function() {
                $('.popup').hide()
            })
            // 回复
            $('.hf-onck').click(function() {
                $('.hf-answer').show()
            })
            // 回复取消
            $('.but-item .can').click(function() {
                $('.hf-answer').hide()
            })
        </script>
        <script type="text/javascript" src="../plugins/bootstrap/dist/js/bootstrap.js"></script>
        <script>
            $(function() {
                var vidHit = $('html').height() - 70;
                var vidCenHit = (vidHit - $('.video-play').height()) / 2;
                var vdwt = $('.video').width();
                var wt = 300;

                $('.course-cont-top-video,.video').css('height', vidHit);
                $('.video').css('height', vidHit - 50);
                $('.note-cont').css('height', vidHit - $('.note-box .note').height() - 65);

                $(window).resize(function() {
                    $('.course-cont-top-video,.video').css('height', vidHit);
                    $('.video').css('height', vidHit - 50);
                    $('.nodte-cont').css('height', vidHit - $('.note-box .note').height() - 65);
                });
                //还原初始状态-控制器
                function setStart(obj) {
                    if (obj === 'ck') { //左导航
                        setnt()
                        setak()
                        setcm()
                        setnav()
                    } else if (obj === 'nt') { // 笔记
                        setak()
                        setck()
                        setcm()
                        setnav()
                    } else if (obj === 'ak') { // 问答
                        setck()
                        setnt()
                        setcm()
                        setnav()
                    } else if (obj === 'cm') { // 评论
                        setck()
                        setnt()
                        setak()
                        setnav()
                    } else if (obj === 'nv') { // 目录
                        setck()
                        setnt()
                        setcm()
                        setak()
                    }
                }

                function setck() {
                    if ($('.video-box .glyphicon-align-justify').hasClass('ck')) {
                        $('.video-box .glyphicon-align-justify').removeClass('ck');
                        $('.video-box').animate({
                            width: '100%'
                        }, 500)
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 0)
                        $('.course-weeklist').animate({
                            left: -wt
                        }, 500)
                    }
                }

                function setnt() {
                    if ($('.course-nav .lab-note').hasClass('nt')) {
                        $('.course-nav .lab-note').removeClass('nt');
                        $('.note').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 0)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                }
                //
                function setnav() {
                    if ($('.course-nav .nav').hasClass('nv')) {
                        $('.course-nav .nav').removeClass('nv');
                        $('.navCont').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 0)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                }
                //
                function setak() {
                    if ($('.course-nav .lab-ask').hasClass('ak')) {
                        $('.course-nav .lab-ask').removeClass('ak');
                        $('.ask').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 0)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                }
                // 讲义
                function setcm() {
                    if ($('.course-nav .lab-com').hasClass('cm')) {
                        $('.course-nav .lab-com').removeClass('cm');
                        $('.com').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 0)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                }
                //
                $('.note-box .problem').click(function() {
                    alert('wenda')
                    if (!$(this).hasClass('ck')) {
                        $(this).addClass('ck');
                        $(this).find('p').css('display', 'block')
                        $('.note-cont').css('height', vidHit - $('.note-box .note').height() - 65);
                    } else {
                        $(this).removeClass('ck');
                        $(this).find('p').css('display', 'none')
                        $('.note-cont').css('height', vidHit - $('.note-box .note').height() - 65);
                    }
                });
                //
                var reht = $(".video-box .resou-box").height();
                $(".video-box .pull-right").click(function() {
                    if (!$(this).hasClass('ck')) {
                        $(this).addClass('ck');
                        $(".video-box .resources").animate({
                            height: reht
                        }, 500)
                    } else {
                        $(this).removeClass('ck');
                        $(".video-box .resources").animate({
                            height: 0
                        }, 500)
                    }
                })
                //笔记切换
                $('.note-box .note-lab span, .ask-box .note-lab span').click(function() {
                    $(this).addClass('active').siblings().removeClass('active')
                    if ($(this).index() == 1) {
                        $('.note-item-cont').animate({
                            'left': -400
                        }, 500)
                    } else {
                        $('.note-item-cont').animate({
                            'left': 0
                        }, 500)
                    }
                })
                //笔记部分处理
                var myNtHt = $('.my-note .textarea-box').height();
                $('.my-note .my-item-box').css('height', $('.note-box').height() - myNtHt - 160 + "px");
                $('.sel-note .my-item-box').css('height', $('.note-box').height() - 160 + "px");
                $('.course-nav .lab-note').click(function() {
                    window.location = '#'
                    setStart('nt');
                    if (!$(this).hasClass('nt')) {
                        $(this).addClass('nt');
                        $('.note').animate({
                            'width': "400px"
                        }, 500)
                        $('.course-nav').animate({
                            'right': "401px"
                        }, 500)
                        $('.video').animate({
                            'width': vdwt - 380 + 'px'
                        }, 500);
                    } else {
                        $(this).removeClass('nt');
                        $('.note').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 500)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                })
                //目录
                $('.course-nav .nav').click(function() {
                    window.location = '#'
                    setStart('nv');
                    if (!$(this).hasClass('nv')) {
                        $(this).addClass('nv');
                        $('.navCont').animate({
                            'width': "300px"
                        }, 500)
                        $('.course-nav').animate({
                            'right': "301px"
                        }, 500)
                        $('.video').animate({
                            'width': vdwt - 280 + 'px'
                        }, 500);
                    } else {
                        $(this).removeClass('nv');
                        $('.navCont').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 500)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                })
                // 问答
                $('.course-nav .lab-ask').click(function() {
                    window.location = '#'
                    setStart('ak');
                    if (!$(this).hasClass('ak')) {
                        $(this).addClass('ak');
                        $('.ask').animate({
                            'width': "400px"
                        }, 500)
                        $('.course-nav').animate({
                            'right': "401px"
                        }, 500)
                        $('.video').animate({
                            'width': vdwt - 380 + 'px'
                        }, 500);
                    } else {
                        $(this).removeClass('ak');
                        $('.ask').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 500)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                })
                // 评论
                $('.course-nav .lab-com').click(function() {
                    window.location = '#'
                    setStart('cm');
                    if (!$(this).hasClass('cm')) {
                        $(this).addClass('cm');
                        $('.com').animate({
                            'width': "400px"
                        }, 500)
                        $('.course-nav').animate({
                            'right': "401px"
                        }, 500)
                        $('.video').animate({
                            'width': vdwt - 380 + 'px'
                        }, 500);
                    } else {
                        $(this).removeClass('cm');
                        $('.com').animate({
                            'width': "0"
                        }, 500);
                        $('.course-nav').animate({
                            'right': "0px"
                        }, 500)
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                })
                //video播放器
                $('.video-mine .cls-text').click(function() {

                })

            })
        </script>
</body>