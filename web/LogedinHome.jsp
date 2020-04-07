<%@ page import="Bean.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>云学习</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="http://www.clantrip.com/static/css/common.css" rel="stylesheet">
    <style>
        body {
            padding-top: 50px;
            margin: 0px;
            padding: 0px;
            width: 100%;
            height: 100%;
        }

        .starter {
            padding: 40px 56px;
            text-align: center;
        }

        .row {
            margin-bottom: 0;
            margin-top: 10px;
        }

        #bg {
            position: fixed;
            width: 100%;
            height: 100%;
            z-index: -1;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    String userName = "username";
    if (user != null) {
        userName = user.getName();
    }
%>
<img id='bg' src='img/beijing1.jpg'/>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header active">
            <a href="#" class="navbar-brand active"><strong>Cloud Learning</strong><small class="bottom">
                你的云学习网站</small></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
                <li class="nav-item active "><a href="#" class="nav-link"><span class="glyphicon glyphicon-unchecked"
                                                                                  aria-hidden="true"></span>主页</a></li>
                <li class="nav-item"><a href="submit.jsp" class="nav-link"><span class="glyphicon glyphicon-book"
                                                                                         aria-hidden="true"></span> 提交文件</a></li>
                </li>
                <li class="nav-item"><a href="#" class="nav-link"><span class="glyphicon glyphicon-check"
                                                                               aria-hidden="true"></span><%=userName%></a></li>
            </ul>
        </div>
    </div>
</nav>
<br>
<div class="col-lg-6 col-lg-offset-1 " style="padding-left: 5px;">
    <div class="starter">
        <h1 class="navbar-left" style="color: white"><strong>Cloud Learning</strong></h1>
    </div>
</div>

<div class="container" style="margin-top: 140px;">
    <div class="jumbotron" style="background-color: rgba(175,184,183,0.7)">
        <h2 style=""><strong>HELLO!</strong></h2>
        <p>这是一个可以根据你自己的要求<br>私人订制深度学习的网站</p>
        <p><a class="btn btn-primary btn-lg" href="login.jsp" role="button">Sign In Now</a></p>
    </div>
</div>
<div class="container-fluid" style="color: white;margin-top: 60px;">
    <section class="row">
        <div class="col-lg-3 col-md-6 col-sm-12 " style="background-color: #692898; height: 300px;">
            <h2 class="text-center" style="padding-top:20px; padding-left: 20px; padding-right: 20px;"> 创建新任务</h2>
            <p class="text-center">开始新的Cloudlearning任务</p><br><br><br><br><br><br>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12" style="background-color: #8666ff; height: 300px;">
            <h2 class="text-center" style="padding-top:20px; padding-left: 20px; padding-right: 20px;"> 历史任务</h2>
            <p class="text-center">查看历史任务和结果</p><br><br><br><br><br><br>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12" style="background-color: #8aacff; height: 300px;">
            <h2 class="text-center" style="padding-top:20px; padding-left: 20px; padding-right: 20px;"> 共享与讨论</h2>
            <p class="text-center">用户论坛以及模型共享</p><br><br><br><br><br><br>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-12" style="background-color: #207498; height: 300px;">
            <h2 class="text-center" style="padding-top:20px; padding-left: 20px; padding-right: 20px;"> 联系我们</h2>
            <p class="text-center">Any problems</p><br><br><br><br><br><br>
        </div>
    </section>
</div>
<br>
<div class="container-fluid" style="padding-top: 30px;margin-bottom: 100px;">
    <div class="jumbotron" style="background-color: rgba(0,0,0,0.5); color: white">
        <div class="index-row our-data">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 main-title">
                        <h2 class="h1">我们的成绩</h2>

                        <p class="line line-big"></p>

                        <h2>
                            <small style="color: white">2020年1月13日至今，我们的访问量</small>
                        </h2>

                        <h2 class="h1">目前是 <strong><big>无</big></strong></h2>
                        <h2 class="h1">还会继续努力</h2>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation">
    <div class="container">
        <div class="navbar-header active">
            <a href="#" class="navbar-brand active"><strong>Cloud Learning</strong><small class="bottom">
                你的云学习网站</small></a>
        </div>
        <div class="navbar-right ">
            <a href="#" class="navbar-brand">E-mail:cloudlearning@163.com</a>
        </div>
    </div>
</nav>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    (function(window,document,undefined){
        var hearts = [];
        window.requestAnimationFrame = (function(){
            return window.requestAnimationFrame ||
                window.webkitRequestAnimationFrame ||
                window.mozRequestAnimationFrame ||
                window.oRequestAnimationFrame ||
                window.msRequestAnimationFrame ||
                function (callback){
                    setTimeout(callback,1000/60);
                }
        })();
        init();
        function init(){
            css(".heart{width: 10px;height: 10px;position: fixed;background: #f00;transform: rotate(45deg);-webkit-transform: rotate(45deg);-moz-transform: rotate(45deg);}.heart:after,.heart:before{content: '';width: inherit;height: inherit;background: inherit;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;position: absolute;}.heart:after{top: -5px;}.heart:before{left: -5px;}");
            attachEvent();
            gameloop();
        }
        function gameloop(){
            for(var i=0;i<hearts.length;i++){
                if(hearts[i].alpha <=0){
                    document.body.removeChild(hearts[i].el);
                    hearts.splice(i,1);
                    continue;
                }
                hearts[i].y--;
                hearts[i].scale += 0.004;
                hearts[i].alpha -= 0.013;
                hearts[i].el.style.cssText = "left:"+hearts[i].x+"px;top:"+hearts[i].y+"px;opacity:"+hearts[i].alpha+";transform:scale("+hearts[i].scale+","+hearts[i].scale+") rotate(45deg);background:"+hearts[i].color;
            }
            requestAnimationFrame(gameloop);
        }
        function attachEvent(){
            var old = typeof window.οnclick==="function" && window.onclick;
            window.onclick = function(event){
                old && old();
                createHeart(event);
            }
        }
        function createHeart(event){
            var d = document.createElement("div");
            d.className = "heart";
            hearts.push({
                el : d,
                x : event.clientX - 5,
                y : event.clientY - 5,
                scale : 1,
                alpha : 1,
                color : randomColor()
            });
            document.body.appendChild(d);
        }
        function css(css){
            var style = document.createElement("style");
            style.type="text/css";
            try{
                style.appendChild(document.createTextNode(css));
            }catch(ex){
                style.styleSheet.cssText = css;
            }
            document.getElementsByTagName('head')[0].appendChild(style);
        }
        function randomColor(){
            return "rgb("+(~~(Math.random()*255))+","+(~~(Math.random()*255))+","+(~~(Math.random()*255))+")";
        }
    })(window,document);
</script>
</body>
</html>