<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/12
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MicroCloudDisks 一个方便的云盘</title>
    <%--标题栏：--%>
    <link rel="icon" href="img/番茄.png" type="image/x-icon">
    <%--收藏夹：--%>
    <link rel="shortcut icon" href="img/番茄.png" type="image/x-icon">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<body>
<div class="main">
    <div id="myCarousel" class="carousel slide" data-ride="carousel"
         data-interval="3000">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="img/main-Carousel-image2.jpg" alt="First slide">
                <div class="carousel-caption">
                    <%--<h2>欢迎来到 MicroCloudDisks </h2>--%>
                    <h4> 下载分享文件 便捷的文件管理</h4>
                    <h4>多端查看, 多种格式文件在线预览</h4>
                    <br>
                    <button type="button" class="btn btn-success btn-lg"
                            data-toggle="modal" data-target="#myModal">立即登录
                    </button>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <button type="button" class="btn btn-primary btn-lg"
                            data-toggle="modal" data-target="#register">用户注册
                    </button>
                    <br> <br> <br>
                </div>
            </div>
            <div class="item">
                <img src="img/main-Carousel-image4.jpg" alt="Second slide">
                <div class="carousel-caption">
                    <h4>移动办公</h4>
                    <h4>随时随地查看文件，手机支持主流文档在线预览</h4>
                </div>
            </div>
            <div class="item">
                <img src="img/main-Carousel-image5.jpg" alt="Third slide">
                <div class="carousel-caption">
                    <h4>多端同步 文件自动上传下载，实现多台电脑间文件同步</h4>
                    <h4>文件自动上传下载，实现多台电脑间文件同步</h4>
                </div>
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#myCarousel"
           data-slide="next">&rsaquo;</a>
    </div>
    <!--快速登录弹出层-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 450px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">×
                    </button>
                    <h4 class="modal-title" id="myModalLabel">MyTools -快速登录</h4>
                </div>
                <form action="login" method="post"
                      class="bs-example bs-example-form" role="form"
                      onSubmit="return checkloginfrom();">
                    <div class="modal-body">
                        <div style="padding: 30px 30px 10px;">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-user"></i>
                                </span>
                                <input type="text" name="usermail" class="form-control" placeholder="请输入你的手机号/邮箱(必填)"
                                       id="login-username" onblur="checkusernumber()">
                                <!--<span id="login-username-messages"></span>-->
                                <i id="login-username-messages"></i>
                            </div>
                            <br>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-lock"></i>
                                </span>
                                <input type="password" name="userpassword" class="form-control"
                                       placeholder="请输入你注册的用户密码(必填)" id="login-password"
                                       onblur="checkpassword()"> <i
                                    id="login-password-messages"></i>
                            </div>
                            <br>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-check"></i>
                                </span>
                                <%--<img src="img/login-Verification-Code.jpg" class="img-responsive"--%>
                                <%--alt="Cinque Terre"> --%>
                                <input type="text" class="form-control" placeholder=" 10 * 10 = ? " readonly="readonly">
                                <input type="text" class="form-control" placeholder="请输入上图的验证码答案(必填)"
                                       id="login-VerificationCode"
                                       onblur="checkloginVerificationCode()">
                                <i id="login-VerificationCode-messages"></i>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary"
                                data-dismiss="modal">关 闭
                        </button>
                        <button type="submit" class="btn btn-success">立即登录</button>
                    </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!--快速注册弹出层-->
    <div class="modal fade" method="post" id="register" tabindex="-1"
         role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="width: 450px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">×
                    </button>
                    <h4 class="modal-title" id="myModalLabel">MyTools -快速注册</h4>
                </div>
                <form action="register" method="post"
                      class="bs-example bs-example-form" role="form"
                      onSubmit="return checkregisterfrom();">
                    <div class="modal-body">
                        <div style="padding: 30px 30px 10px;">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-envelope"></i>
                                </span>
                                <input type="text" name="usermail" class="form-control" placeholder="请输入你的常用邮箱(必填)"
                                       id="registerMail" onblur="checkuserMail()">
                                <i id="register-mail-messages"></i>
                            </div>
                            <br>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-phone"></i>
                                </span>
                                <input type="text" name="userphone"
                                       class="form-control" placeholder="请输入你的手机号码(选填)"
                                       id="registerPhone" onblur="checkuserPhone()">
                                <i
                                        id="register-phone-messages"></i>
                            </div>
                            <br>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-lock"></i>
                                </span>
                                <input type="password" name="userpassword" class="form-control"
                                       placeholder="请输入你注册的用户密码(必填)" id="registerPassword"
                                       onblur="checkregisterpassword()"> <i id="register-password-messages"></i>
                            </div>
                            <br>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-lock"></i>
                                </span>
                                <input type="password" class="form-control"
                                       placeholder="请重复你注册的用户密码(必填)" id="registerRePassword"
                                       onblur="checkregisterRepassword()"> <i id="register-repassword-messages"></i>
                            </div>
                            <br>
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-check"></i>
                                </span>
                                <input type="button" class="btn btn-default btn-lg btn-block btn-success"
                                       id="register-send-btn" value="获取邮箱验证码" onclick="sendmail()">
                                <input id="mailcode" type="text" name="code"
                                       class="form-control" placeholder="请输入上面的6位数的邮箱验证码(必填)"
                                       onfocus="mailcodecheck()"> <i
                                    id="register-codes-messages"></i>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary"
                                data-dismiss="modal">关 闭
                        </button>
                        <button type="submit" class="btn btn-success">立即注册</button>
                    </div>
                </form>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</div>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<script type="text/javascript" src="js/login.js"></script>

</body>

</html>
