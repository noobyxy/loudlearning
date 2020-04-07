<%@ page import="Bean.User" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>云学习</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="http://www.clantrip.com/static/css/common.css" rel="stylesheet">
    <style>
        body {
            padding-top: 50px;
            margin: 0px;
            padding: 0px;
            /*background-image: url("beijing1.jpg");*/
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
            <a href="#" class="navbar-brand active"><strong>Cloud Learning</strong><small
                    class="bottom">
                你的云学习网站</small></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav">
                <li class="nav-item"><a href="LogedinHome.jsp" class="nav-link"><span
                        class="glyphicon glyphicon-unchecked"
                        aria-hidden="true"></span>主页</a></li>
                <li class="nav-item active"><a href="#" class="nav-link"><span class="glyphicon glyphicon-book"
                                                                               aria-hidden="true"></span> 提交文件</a></li>
                </li>
                <li class="nav-item"><a href="#" class="nav-link"><span class="glyphicon glyphicon-check"
                                                                        aria-hidden="true"></span><%=userName%></a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="container img-rounded" style="background-color: rgba(0,0,0,0.8); color: white ; ">

    <form action="DataServlet" method="post" enctype="multipart/form-data">
        <div class="form-horizontal img-rounded" style="padding-top: 50px;">
        <div class="jumbotron" style="background-color: rgba(0,0,0,0); color: white ;">
            <label style=" color: white;font-size: 20px;">深度学习的种类</label>
            <select class="form-control"
                    style="height:50px;background-color: rgba(0,0,0,0.5); color: white; font-size: 20px; padding-left: 10px; padding-top: 4px" name="learningClass">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
            <label style=" color: white;font-size: 20px; padding-top: 10px;">数据集</label>
            <select class="form-control"
                    style="height:50px;background-color: rgba(0,0,0,0.5); color: white; font-size: 20px; padding-left: 10px; padding-top: 4px" name="dataset">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        </div>
<%--    </form>--%>
<%--    <form class="form-inline" style="" action="DataServlet" method="post">--%>
        <div class="form-inline">
        <div class="form-group">
            <label style="color: white;">上传数据集</label>
            <input class="btn" type="file" class="text-center" style="color: white;">
        </div>
        <div class="form-group">
            <label style="color: white; padding-top: 5px;">上传模型代码</label>
            <input type="file" class="text-center" style="color: white;">
        </div>
        </div>
    <p class="help-block" style="color: white;margin-top: 10px;">@2020</p>
    <nav aria-label="">
        <ul class="pager">
            <li class="previous"><a href="submit.html">Previous</a></li>
            <li class="next">
                <a ><input class="btn" type="submit" value="submit"></a>
            </li>
        </ul>
    </nav>
    </form>
</div>

<script language="javascript">
    function sumbit_sure(){
        var gnl=confirm("确定要提交?");
        if (gnl==true){
            return true;
        }else{
            return false;
        }
    }
</script>

<%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">--%>
<%--    <div class="modal-dialog" role="document">--%>
<%--        <div class="modal-content">--%>
<%--            <div class="modal-header">--%>
<%--                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>--%>
<%--                </button>--%>
<%--                <h4 class="modal-title" id="myModalLabel">确认提交？</h4>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
<%--                <button type="submit" class="btn btn-primary" onclick=jump()>submit</button>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

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
<script>
    function jump() {
        window.location.href = "loading.html";
    }
</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $("#mytab a:last").tab("show");
</script>
<script>
    (function (window, document, undefined) {
        var hearts = [];
        window.requestAnimationFrame = (function () {
            return window.requestAnimationFrame ||
                window.webkitRequestAnimationFrame ||
                window.mozRequestAnimationFrame ||
                window.oRequestAnimationFrame ||
                window.msRequestAnimationFrame ||
                function (callback) {
                    setTimeout(callback, 1000 / 60);
                }
        })();
        init();

        function init() {
            css(".heart{width: 10px;height: 10px;position: fixed;background: #f00;transform: rotate(45deg);-webkit-transform: rotate(45deg);-moz-transform: rotate(45deg);}.heart:after,.heart:before{content: '';width: inherit;height: inherit;background: inherit;border-radius: 50%;-webkit-border-radius: 50%;-moz-border-radius: 50%;position: absolute;}.heart:after{top: -5px;}.heart:before{left: -5px;}");
            attachEvent();
            gameloop();
        }

        function gameloop() {
            for (var i = 0; i < hearts.length; i++) {
                if (hearts[i].alpha <= 0) {
                    document.body.removeChild(hearts[i].el);
                    hearts.splice(i, 1);
                    continue;
                }
                hearts[i].y--;
                hearts[i].scale += 0.004;
                hearts[i].alpha -= 0.013;
                hearts[i].el.style.cssText = "left:" + hearts[i].x + "px;top:" + hearts[i].y + "px;opacity:" + hearts[i].alpha + ";transform:scale(" + hearts[i].scale + "," + hearts[i].scale + ") rotate(45deg);background:" + hearts[i].color;
            }
            requestAnimationFrame(gameloop);
        }

        function attachEvent() {
            var old = typeof window.οnclick === "function" && window.onclick;
            window.onclick = function (event) {
                old && old();
                createHeart(event);
            }
        }

        function createHeart(event) {
            var d = document.createElement("div");
            d.className = "heart";
            hearts.push({
                el: d,
                x: event.clientX - 5,
                y: event.clientY - 5,
                scale: 1,
                alpha: 1,
                color: randomColor()
            });
            document.body.appendChild(d);
        }

        function css(css) {
            var style = document.createElement("style");
            style.type = "text/css";
            try {
                style.appendChild(document.createTextNode(css));
            } catch (ex) {
                style.styleSheet.cssText = css;
            }
            document.getElementsByTagName('head')[0].appendChild(style);
        }

        function randomColor() {
            return "rgb(" + (~~(Math.random() * 255)) + "," + (~~(Math.random() * 255)) + "," + (~~(Math.random() * 255)) + ")";
        }
    })(window, document);
</script>
</body>
</html>