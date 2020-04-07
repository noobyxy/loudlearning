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
<%
    User user = (User) session.getAttribute("user");
    String userName = "username";
    if (user != null) {
        userName = user.getName();
    }
%>
<body>
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


<div class="container img-rounded" style="background-color: rgba(0,0,0,0.8); color: white ;">
    <form action="ApplyServlet" class=" container"  method="post">
    <ul id="mytab" class="nav nav-tabs" style=" padding-top: 8%;padding-bottom: 0px;">
        <li><a href="#jisuanwangluo" data-toggle="tab">计算网络增强型</a></li>
        <li><a href="#dashuju" data-toggle="tab">大数据型</a></li>
        <li><a href="#gongxiang" data-toggle="tab">共享型</a></li>
    </ul>
    <div id="mytabcontent" class="tab-content">
        <div class="tab-pane fade" id="jisuanwangluo">
            <div class="jumbotron" style="background-color: rgba(0,0,0,0); color: white ;">
                <label style="color: white;font-size: 20px;">计算网络增强型</label>
                <select class="form-control"
                        style="height:50px;background-color: rgba(0,0,0,0.5); color: white; font-size: 20px; padding-left: 10px; padding-top: 4px" name="computerClass">
                    <option value="sn1ne.large">计算网络增强型sn1ne 2vCPU 4GiB 2.5GHz 1Gbps 30万PPS ￥0.68/时</option>
                    <option value="sn1ne.xlarge">计算网络增强型sn1ne 4vCPU 8GiB 2.5GHz 1.5Gbps 50万PPS ￥1.37/时</option>
                    <option value="sn1ne.2xlarge">计算网络增强型sn1ne 8vCPU 12GiB 2.5GHz 2Gbps 100万PPS ￥2.74/时</option>
                    <option value="sn1ne.3xlarge">计算网络增强型sn1ne 12vCPU 24GiB 2.5GHz 2.5Gbps 130万PPS ￥4.10/时</option>
                </select>
            </div>
        </div>
        <div class="tab-pane fade" id="dashuju">
            <div class="jumbotron" style="background-color: rgba(0,0,0,0); color: white ;">
                <label style="color: white;font-size: 20px;">大数据型</label>
                <select class="form-control"
                        style="background-color: rgba(0,0,0,0.5); color: white; height:50px; font-size: 20px; padding-left: 10px; padding-top: 4px" name="computerClass">
                    <option value="d1.2xlarge">大数据d1 8vCPU 12GiB 2.5GHz 3Gbps 30万PPS ￥6.36/时</option>
                    <option value="d1.3xlarge">大数据d1 12vCPU 48GiB 2.5GHz 4Gbps 40万PPS ￥9.547/时</option>
                    <option value="d1.4xlarge">大数据d1 16vCPU 64GiB 2.5GHz 6Gbps 60万PPS ￥12.73/时</option>
                </select>
            </div>
        </div>
        <div class="tab-pane fade in active" id="gongxiang">
            <div class="jumbotron" style="background-color: rgba(0,0,0,0); color: white ;">
                <label style=" color: white;font-size: 20px;">共享型</label>
                <select class="form-control"
                        style="height:50px;background-color: rgba(0,0,0,0.5); color: white; font-size: 20px; padding-left: 10px; padding-top: 4px" name="computerClass">
                    <option value="mn4.small">共享通用型mn4 1vCPU 4GiB</option>
                    <option value="mn4.large">共享通用型mn4 2vCPU 8GiB</option>
                    <option value="mn4.xlarge">共享通用型mn4 4vCPU 16GiB</option>
                    <option value="mn4.2xlarge">共享通用型mn4 8vCPU 32GiB</option>
                    <option value="mn4.small">共享内存型e4 1vCPU 8GiB</option>
                </select>
            </div>
        </div>
    </div>
<%--    <div class="form-horizontal img-rounded">--%>
        <div class="form-group">
            <label for="inputNumber" class="col-sm-2 control-label" style="color: white;font-size: 20px;">服务器数量</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="inputNumber" placeholder="需要的服务器数量"
                       style="background-color: rgba(0,0,0,0.1);border-width: 0 0 2px 0;color: white;font-size: 20px; height:50px;" name="ComputerNum">
            </div>
        </div>
<%--    </form>--%>
    <nav aria-label="" style="padding-top: 10px;">
        <ul class="pager">
            <li class="next">
                <a><input type="submit" value="next"></a>
            </li>
        </ul>
    </nav>
    </form>
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