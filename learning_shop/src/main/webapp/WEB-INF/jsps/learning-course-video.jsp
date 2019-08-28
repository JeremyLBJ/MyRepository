<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- - -->
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

    <link rel="stylesheet" href="/plugins/rainbow.css" />
    <link rel="stylesheet" href="../css/page-learing-course-video.css" />
    <link rel="stylesheet" href="../plugins/normalize-css/normalize.css" />
    <link rel="stylesheet" href="../plugins/bootstrap/dist/css/bootstrap.css" />
</head>

<body>
    <!-- 页面头部 -->
    <div class="learing-course">
        <div>
            <div class="course-cont">
            <%@ include file="public/topvideo.jsp" %>
            
                <div class="subtitle-cont">
                <%@ include file="public/containervideo.jsp" %>
                    
                    <div class="course-nav">
                        <div class="nav-stacked text-center">
                            <li class="handout"><a href="javascript:;" class="glyphicon glyphicon-list-alt"><span>讲义</span></a></li>
                            <li class="lab-note"><a href="javascript:;" class="glyphicon glyphicon-user"><span>笔记</span></a></li>
                            <li class="on-line"><a href="javascript:;" class="glyphicon glyphicon-user"><span>直播</span></a></li>
                            <li><a href="javascript:;" onclick="screenshot()" class="glyphicon glyphicon-list-alt"><span>截图</span></a></li>
                            <li class="lab-ask"><a href="javascript:;" class="glyphicon glyphicon-cog"><span>问答</span></a></li>
                            <li><a href="./learing-course-practive.html" class="glyphicon glyphicon-log-out"><span>代码</span></a></li>
                            <li><a href="./learing-course-problem.html" class="glyphicon glyphicon-log-out"><span>练习</span></a></li>
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
                console.log(cont)
                if (!cont) {
                    alert('您发送的信息为空！')
                }
                $('.chat-box ul').append('<li class="rt"><span><img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517221250282&di=33dec77d7966a70bb1edef24cc93692d&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D593340121%2C2144442477%26fm%3D214%26gp%3D0.jpg" width="30" alt=""></span>' + cont + '</li>')
                $('.chat-box').scrollTop($('.chat-box ul').height())
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
                    console.log(obj)
                    if (obj === 'ck') { //左导航
                        setnt()
                        setak()
                        setht()
                        setol()
                    } else if (obj === 'nt') { // 笔记
                        setak()
                        setck()
                        setht()
                        setol()
                    } else if (obj === 'ak') { // 问答
                        setck()
                        setnt()
                        setht()
                        setol()
                    } else if (obj === 'ht') { // 讲义
                        setck()
                        setnt()
                        setak()
                        setol()
                    } else if (obj === 'ol') { // 直播
                        setck()
                        setnt()
                        setht()
                        setak()
                    }
                }

                function setck() {
                    if ($('.video-box .glyphicon-align-justify').hasClass('ck')) {
                        $('.video-box .glyphicon-align-justify').removeClass('ck');
                        $('.video-box').animate({
                            width: '100%'
                        }, 500)
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
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                }
                //
                function setol() {
                    if ($('.course-nav .on-line').hasClass('ol')) {
                        $('.course-nav .on-line').removeClass('ol');
                        $('.online').animate({
                            'width': "0"
                        }, 500);
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
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                }
                // 讲义
                function setht() {
                    if ($('.course-nav .handout').hasClass('active')) {
                        $('.course-nav .handout').removeClass('active');
                        $('.video-mine .cls-text').animate({
                            'width': "0",
                            'height': '0'
                        }, 500)
                        $('.video-mine .cls-video').animate({
                            'width': "100%",
                            'height': '100%',
                            'right': '0'
                        }, 500)
                    }
                }
                // 左侧导航点击
                $('.video-box .glyphicon-align-justify, .nav-justified i').click(function() {
                    var contWidth = $(window).width() - wt;
                    setStart('ck')
                    if (!$('.video-box .glyphicon-align-justify').hasClass('ck')) {
                        $('.video-box .glyphicon-align-justify').addClass('ck');
                        $('.video-box').animate({
                            width: contWidth
                        }, 500);
                        $('.course-weeklist').animate({
                            left: 0
                        }, 500);
                    } else {
                        $('.video-box .glyphicon-align-justify').removeClass('ck');
                        $('.video-box').animate({
                            width: '100%'
                        }, 500)
                        $('.course-weeklist').animate({
                            left: -wt
                        }, 500)
                    }

                });
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
                        $('.video').animate({
                            'width': vdwt - 380 + 'px'
                        }, 500);
                    } else {
                        $(this).removeClass('nt');
                        $('.note').animate({
                            'width': "0"
                        }, 500);
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
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
                //直播
                $('.course-nav .on-line').click(function() {
                    $('.chat-box').height($('.online-box').height() - 120)
                    if ($('.chat-box ul').height() >= 718) {
                        $('.chat-box').scrollTop($('.chat-box ul').height())
                    }
                    window.location = '#'
                    setStart('ol');
                    if (!$(this).hasClass('ol')) {
                        $(this).addClass('ol');
                        $('.online').animate({
                            'width': "400px"
                        }, 500)
                        $('.video').animate({
                            'width': vdwt - 380 + 'px'
                        }, 500);
                    } else {
                        $(this).removeClass('ol');
                        $('.online').animate({
                            'width': "0"
                        }, 500);
                        $('.video').animate({
                            'width': '100%'
                        }, 500);
                    }
                })
                //讲义
                $('.course-nav .handout').click(function() {
                    setStart('ht')
                    if (!$(this).hasClass('active')) {
                        $(this).addClass('active').siblings().removeClass('active');
                        $('.video-mine .cls-text').animate({
                            'width': "70%",
                            'height': '100%'
                        }, 500)
                        $('.video-mine .cls-video').animate({
                            'width': "25%",
                            'height': '300px',
                            'right': '2%'
                        }, 500)
                    } else {
                        $(this).removeClass('active');
                        $('.video-mine .cls-text').animate({
                            'width': "0",
                            'height': '0'
                        }, 500)
                        $('.video-mine .cls-video').animate({
                            'width': "100%",
                            'height': '100%',
                            'right': '0'
                        }, 500)
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
                        $('.video').animate({
                            'width': vdwt - 380 + 'px'
                        }, 500);
                    } else {
                        $(this).removeClass('ak');
                        $('.ask').animate({
                            'width': "0"
                        }, 500);
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