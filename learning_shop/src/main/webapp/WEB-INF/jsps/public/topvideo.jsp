<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<script type="text/javascript" src="../plugins/jquery/dist/jquery.js"></script>
 <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
<div class="course-cont-top-video" style="position: relative;">
                    <div class="course-weeklist">
                        <div class="nav nav-stacked">
                            <div class="tit nav-justified text-center"><i class="pull-left glyphicon glyphicon-arrow-left"></i>第一周软件安装 <i class="pull-right">1/4</i></div>
                            <li><i class="glyphicon glyphicon-check"></i>分级政策细分 <span>视</span></li>
                            <li><i class="glyphicon glyphicon-unchecked"></i>为什么分为A、B、C部分</li>
                            <li><i class="glyphicon glyphicon-unchecked"></i>软安装介绍</li>
                            <li><i class="glyphicon glyphicon-unchecked"></i>Emacs安装 <span>阅</span></li>
                        </div>
                    </div>
                    <div class="video-box">
                        <div class="top text-center">
                            <i class="glyphicon glyphicon-align-justify pull-left hv-poin"></i>
                            < 为什么分为 A 部分、B 部分、C 部分>
                                <i class="glyphicon glyphicon-book pull-right"></i>
                                <div class="resources">
                                    <div class="resou-box">
                                        <div class="resources-tit"><i class="glyphicon glyphicon-folder-close"></i>课程资源</div>
                                        <div class="tit">课程材料</div>
                                        <div><i class="glyphicon glyphicon-floppy-save"></i>软件安装包</div>
                                        <div class="tit">其他</div>
                                        <div><i class="glyphicon glyphicon-download-alt"></i>字幕下载</div>
                                        <div><i class="glyphicon glyphicon-flag"></i>报告问题</div>
                                    </div>
                                </div>
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
                        <div class="note">
                            <div class="note-box">
                                <div class="note-lab"><span class="active" id="myNote" >我的笔记</span><span id="notes" >精选笔记</span></div>
                                <div class="note-item-cont">
                                    <div class="my-note">
                                        <div class="textarea-box">
                                            <textarea name="my-note" id="note"></textarea>
                                            <div class="info"><span class="time"><i class="i-play">
                                            </i>23`22` </span><span class="not-but">提交</span></div>
                                        </div>
                                        <ul class="my-item-box" id="box">
                                        
                                        </ul>
                                     
                                     
                                        <a href="#" class="more">查看更多</a>
                                    </div>
                                    <div class="sel-note">
                                        <ul class="my-item-box" id="itemBox">
                                         
                                           
                                           
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
                        <div class="online">
                            <div class="online-box">
                                <div class="online-top">您的昵称：张三 </div>
                                <div class="chat-box">
                                    <ul>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>老师好！</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>服务器拉下来的，别人发的是在左边</li>
                                        <li><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221739835&di=7317cb790d60b0a4ed661454af02c743&imgtype=0&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-25%2F033334181.jpg" alt=""></span>只有自己发的才是在右边的</li>
                                    </ul>
                                </div>
                                <div class="online-sub">
                                    <input type="text" class="online-cont" placeholder="加入群聊...">
                                    <div> <span class="online-submit">发送</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
               /*  function MyNote(){
                	$.post("findAllNotes",function(data){
            			 showDatas(data,"#box"); 
            		})
                }; */
                /*文章评论*/
                	$(".not-but").click(function(){
                		var Content = $("#note");
                		if(Content.val() === ''){
                			alert('内容不能为空');
                			return false;
                		} 
                		var content = Content.val();
                	 	 $.post("comment",
                				{Content:content},
                				function(data){ 
                					$("#note").val('');
                					showDatas(data);
                				}); 
                });
                
                $("#not").click(function(){
                	alert(1);
                });
                
                //通过用户的id号查询信息
                	$('#myNote').click(function(){
                		$.post("findAllNotes",function(data){
                			showDatas(data,"#box");
                		})
                	});
                
                $('#notes').click(function(){
                	$.post("orderByAgreeCnt",function(data){
                		showDatas(data,"#itemBox");
                	})
                });
                
                function showDatas(data,url){
                	//-1表示登录失败 可能会有多个验证信息 拼装后输出
					if(data.code == -1) {
						var msgs = "";
						for(var i = 0 ; i < data.data.length ; i++){
							msgs += data.data[i].defaultMessage+"\r\n";
						}
						alert(msgs);
					}else{
					}
					if(data.code == 1) {
						var index = (data.data.length);
						var str = "";
						for(var i = 0 ; i < index ; i++){
						 //评论成功!要更新评论列表    此处只是添加一行
						 str+= "<li><div><span><img src='photo' alt=''></span>"+
					        " <span class='name'>"+data.data[0].username+"</span><span class='time'>"+
					        "<i class='i-play'></i>'time'</span></div>"+<!--time当前视频定格评论的时间-->
					        "<div class='cont'>"+
					        ""+data.data[i].userNotes[0].content+"</div>"+
					        "<div class='operation'><span>"+data.data[i].userNotes[0].createtime+"</span>"+
					        "<div class='oper-box'><span><i class='i-edt'></i>编辑</span>"+
					        "<span><i class='i-del'></i>删除</span><span><i class='i-laud'></i>赞</span></div></div></li>";
					}
					}
						$(url).html(str); 
                };
                </script>
</head>

