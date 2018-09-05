<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/21
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>用户中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/diskmain.css">
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>

<!--主页头部-->
<div class="main-head">
    <div class="main-head-left">
        <div class="main-head-left-img">
            <div class="main-head-left-img-logo">
                <img src="img/gaoqinglogo.jpg" align="absbottom"/>
            </div>
            <div class="main-head-left-img-name">
                <a href=""
                   style="font-family: '宋体';color: black;font-size: 26px;text-decoration: none;margin-top: 1px;">我的云盘</a>
            </div>
        </div>
        <div class="main-head-left-a">
            <ul style="margin-left: -40px;">
                <li>
                    <a href="">分享</a>
                </li>
                <li>
                    <a href="">下载</a>
                </li>
                <li>
                    <a href="">更多</a>
                </li>
            </ul>
        </div>

    </div>
    <div class="main-head-right">
        <div class="main-head-right-user">
            <div class="main-head-right-user-left">
                <div class="main-head-right-user-left-iocn">
                    <a href=""><img src="img/gaoqinglogo.jpg" style="margin: 12px 12px;"></a>
                </div>
                <div class="main-head-right-user-left-username">
                    <a href="" style="margin: 12px 2px;line-height: 65px;font-size: 16px;text-decoration: none;">
                        ${diskuser.username}
                    </a>
                </div>
            </div>
            <div class="main-head-right-user-right">
                <a href=""
                   style="margin: 12px 32px;line-height: 68px;font-family:'宋体';font-size: 16px;text-decoration: none;">
                    专用下载器下载
                </a>
            </div>
        </div>
        <div class="main-head-right-right">
            <div style="margin: 14px 5px;">
                <a href="userCenter">
                    <button type="button" class="btn btn-danger">开通会员</button>
                </a>
            </div>
        </div>
    </div>
</div>




</body>
</html>
