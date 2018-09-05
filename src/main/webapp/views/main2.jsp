<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/13
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>

<head>
    <meta name="viewport" content="width=width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MicroCloudDisks</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/diskmain.css">
    <%--<link rel="stylesheet" href="css/treeview.css">--%>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <%--<script type="text/javascript" src="js/treeview.js"></script>--%>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .modal-dialog {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .modal-content {
            /*overflow-y: scroll; */
            position: absolute;
            top: 0;
            bottom: 0;
            width: 100%;
        }

        .modal-body {
            overflow-y: scroll;
            position: absolute;
            top: 55px;
            bottom: 65px;
            width: 100%;
        }

        .modal-header .close {
            margin-right: 15px;
        }

        .modal-footer {
            position: absolute;
            width: 100%;
            bottom: 0;
        }
    </style>
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
                    <button type="button" class="btn btn-danger">用户中心</button>
                </a>
            </div>
        </div>
    </div>
</div>

<%--<!--主页左边部分-->--%>
<%--<div class="main-left">--%>
    <%--<div class="main-left-tag" id="main-left-tag">--%>
        <%--<ul>--%>
            <%--<li class="active">--%>
                <%--<a href="#allfile" data-toggle="tab">全部文件</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#note" data-toggle="tab">上传/下载列表</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#note" data-toggle="tab">随笔</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#images" data-toggle="tab">图片</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#document" data-toggle="tab">文档</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#video" data-toggle="tab">视频</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#music" data-toggle="tab">音乐</a>--%>
            <%--</li>--%>
            <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#others" data-toggle="tab">其他</a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
            <%--<li>--%>
                <%--<a href="#share" data-toggle="tab">我的分享</a>--%>
            <%--</li>--%>
            <%--<li>--%>
                <%--<a href="#recycle-bin" data-toggle="tab">回收站</a>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>
    <%--<div style="width: 100%;height: 10px; background-color: #eff4f8;"></div>--%>
    <%--<div class="main-left-bottom">--%>
        <%--<div class="progress" style="margin-right: 20px;height: 12px;margin-bottom: 5px;margin-left: 15px;">--%>
            <%--<div class="progress-bar progress-bar-success" role="progressbar"--%>
                 <%--aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"--%>
                 <%--style="width: 20%;">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div style="align-items: center; text-decoration: none;">--%>
            <%--&nbsp; &nbsp; 2G/10G--%>
            <%--<a href="">可扩容至100G</a>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<!--主页右边部分的头部-->
<div class="main-right-head">
    <div class="main-right-head-top">
        <div class="main-right-head-top-left">
            <button data-toggle="modal" data-target="#myModal" type="button" class="btn btn-info"
                    style="margin-left: 13px; margin-right: 10px;">上传文件
            </button>
            <button data-toggle="modal" data-target="#createFolder" type="button" class="btn btn-default"
                    style="margin: 8px 10px;">新建文件夹
            </button>
            <button data-toggle="modal" data-target="#deleteFolder" type="button" class="btn btn-default"
                    style="margin: 8px 10px;">删除文件
            </button>
            <button data-toggle="modal" data-target="#alldownload" type="button" class="btn btn-default"
                    style="margin: 8px 10px;">我的日志
            </button>
            <button type="button" class="btn btn-default" style="margin: 8px 10px;">下载历史</button>
        </div>
        <form action="SearchFile" method="post" style="margin: 0px;padding: 0px;">
            <div class="main-right-head-top-right">
                <div class="form-group" style="float: left;">
                    <input name="searchFileName" type="text" class="form-control"
                           style="margin: 8px 8px ; width: 261px;height: 35px;"
                           placeholder="Search Files">
                </div>
                <div style="width: 5000px;height: 51px;;">
                    <button type="submit" class="btn btn-default" style="margin: 8px 8px ; width: 84px;height: 35px;">
                        <i class="glyphicon glyphicon-search"></i> 搜 索
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>


<!-- 文件上传模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 720px;height: 300px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel" style="display: inline-block">
                    文件上传
                </h4>
                <h5 style="display: inline-block">( 小提示 : 将多个文件压缩成一个压缩文件上传速度更快哦 ! )</h5>
            </div>
            <%--<form action="uploads" enctype="multipart/form-data" method="post" id="uploadfilesForm"--%>
            <%--style="display: inline-block;">--%>
            <div class="modal-body" style="overflow: hidden;">
                <br>
                <div class="form-group" id="passwordDiv">
                    <label>请选择你要上传文件 : &nbsp; &nbsp; &nbsp; &nbsp; </label>
                    <%--<input class="form-control" type="file" id="batchFile">--%>

                    <%--upload_file--%>
                    <input type="file" class="form-control" name="file" id="batchFile" style="display:none;"
                    <%--multiple="multiple"--%>
                           onchange="change();"/>
                    <input type="text" class="form-control"
                           style="width: 460px;height: 36px;margin: 2px 0px;display: inline-block;" id="upload_file_tmp"
                           name="upload_file_tmp" placeholder="未选择任何文件  ( 点此选择文件 ) "
                           onclick="batchFile.click(); ">
                </div>
            </div>
            <%--请 选 择 你 要 上 传 的 文 件 : &nbsp; &nbsp;--%>
            <%--<input type="file" class="form-control" name="uploadfiles" id="upload_file" style="display:none;"--%>
            <%--multiple="multiple"--%>
            <%--onchange="change();"/>--%>
            <%--<input type="text" class="form-control"--%>
            <%--style="width: 460px;height: 36px;margin: 2px 0px;display: inline-block;" id="upload_file_tmp"--%>
            <%--name="upload_file_tmp" placeholder="未选择任何文件  ( 点此选择文件 ) "--%>
            <%--onclick="upload_file.click(); ">--%>
            <%--<br>--%>
            <%--<div style="text-align: center">--%>
            <%--<p type="text" id="baifenbi"></p>--%>
            <%--</div>--%>
            <%--<div class="progress progress-striped active" style="display: none">--%>
            <%--<div id="progressBar" class="progress-bar progress-bar-info"--%>
            <%--role="progressbar" aria-valuemin="0" aria-valuenow="0"--%>
            <%--aria-valuemax="100" style="width: 0%">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--请 选 择 你 要 上 传 的 目 标 文 件 夹 :--%>
            <%--<table id="filderListTable0" class="table table-hover">--%>
            <%--<thead>--%>
            <%--<tr>--%>
            <%--<td></td>--%>
            <%--<th> 文件名</th>--%>
            <%--<th> 大小</th>--%>
            <%--<th> 修改时间</th>--%>
            <%--</tr>--%>
            <%--</thead>--%>
            <%--<tbody>--%>
            <%--<tr>--%>
            <%--<div class="radio">--%>
            <%--<label>--%>
            <%--<td><input type="radio" name="optionsRadios" value="*"--%>
            <%--onclick="displayResult()"/>--%>
            <%--</td>--%>
            <%--<td><img src="img/folder6.jpg"> * ( 当前文件夹 )</td>--%>
            <%--<td> &nbsp; -</td>--%>
            <%--<td>刚刚</td>--%>
            <%--</label>--%>
            <%--</div>--%>
            <%--</tr>--%>
            <%--<c:forEach items="${folderlist}" var="fl">--%>
            <%--<c:if test="${fl.filetype=='folder'}">--%>
            <%--<tr>--%>
            <%--<td><input onclick="displayResult()" type="radio"--%>
            <%--name="optionsRadios"--%>
            <%--value="${fl.foldername}"></td>--%>
            <%--<td><img src=${fl.icon}> ${fl.foldername}</td>--%>
            <%--<td> &nbsp; -</td>--%>
            <%--<td>${fl.updatetime}</td>--%>
            <%--</tr>--%>
            <%--</c:if>--%>
            <%--</c:forEach>--%>
            <%--</tbody>--%>
            <%--</table>--%>
            <input id="updateFilepathID" name="filepath" value="${filepath}" style="width: 600px;display: none;"/>
            <%--<input id="radiovalue" name="radiovalue" type="text" style="display:none" value=""/>--%>
            <%--</div>--%>
            <%--</form>--%>
            <div class="modal-footer">

                <div style="text-align: center">
                    <p type="text" id="baifenbi"></p>
                </div>
                <div class="progress progress-striped active" style="display: none">
                    <div id="progressBar" class="progress-bar progress-bar-info"
                         role="progressbar" aria-valuemin="0" aria-valuenow="0"
                         aria-valuemax="100" style="width: 0%">
                    </div>
                </div>

                <button id="houtaiyunxing" type="button" class="btn btn-default" data-dismiss="modal" value="">取消
                </button>
                <%--onclick="filesubmit()"--%>
                <button id="batchUploadBtn" onclick="sumitbtn()" type="button" class="btn btn-primary">
                    开始上传
                </button>
            </div>
        </div>
    </div>
</div>
<!-- 新建文件夹模态框（Modal） -->
<div class="modal fade" id="createFolder" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2"
     aria-hidden="true">
    <div class="modal-dialog" style="width: 720px;height: 250px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel2">
                    新建文件夹
                </h4>
            </div>
            <form action="newFolder" method="post" id="creatFolderForm">
                <div class="modal-body">
                    当前文件夹 :
                    <c:choose>
                        <c:when test="${folderlist[0].parent==diskuser.usermail}">
                            root/根目录
                        </c:when>
                        <c:otherwise>
                            <%--${nowfolder}--%>
                            <input name="filepath" style="width: 500px;display: " value="${filepath}"/>
                        </c:otherwise>
                    </c:choose>
                    <br><br>
                    <div class="input-group input-group-lg">
                        <input name="usermail" type="text" style="display: none" value="${diskuser.usermail}"/>
                        <span class="input-group-addon" style="background-color:white;"><img
                                src="img/folder6.jpg"></span>
                        <input name="foldername" type="text" class="form-control"
                               placeholder="请输入新建文件夹的名字( 默认为 '新建文件夹 ' )">
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" class="btn btn-primary">
                        新建文件夹
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- 删除文件夹模态框（Modal） -->
<div class="modal fade" id="deleteFolder" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3"
     aria-hidden="true">
    <div class="modal-dialog" style="width: 760px;height: 480px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel3" style="display: inline-block;">
                    批量删除
                </h4>
                <h5 style="display:inline-block;"> ( 小提示 : 删除的文件/文件夹可以在回收站中找回 ) </h5>
            </div>
            <form action="deleteFolder" method="post">
                <div class="modal-body">

                    请 选 择 你 要 删 除 的 文 件 / 文件夹 :
                    <br><input type="text" value="${filepath}" name="filepath" style="display: none;"/>
                    <table id="filderListTable" class="table table-hover">
                        <thead>
                        <tr>
                            <td></td>
                            <th> 文件名</th>
                            <th> 大小</th>
                            <th> 修改时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${folderlist}" var="fl">
                            <tr>
                                <td><input type="checkbox" name="deleteradio" value="${fl.folderid}"
                                           onclick="deleteFolder()"></td>
                                <td><img src=${fl.icon}> ${fl.foldername}</td>
                                <td>${fl.sizes}</td>
                                <td>${fl.updatetime}</td>
                            </tr>
                        </c:forEach>
                        </tbody>

                    </table>


                    <%--请 选 择 你 要 删 除 的 文 件 / 文件夹 :--%>
                    <%--<br><input type="text" value="${filepath}" name="filepath"/>--%>
                    <%--<c:forEach items="${folderlist}" var="fl">--%>
                    <%--<div class="radio">--%>
                    <%--<label>--%>
                    <%--<input type="radio" name="deleteradio" value="${fl.foldername}"--%>
                    <%--onclick="deleteFolder()"/>${fl.foldername}--%>
                    <%--</label>--%>
                    <%--</div>--%>
                    <%--</c:forEach>--%>
                    <%--<input name="usermail" type="text" style="display: " value="${diskuser.usermail}"/>--%>
                    <input id="deleteradiovalue" name="deletefoldername" type="text" style="width: 700px;display: none;" value=""/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" class="btn btn-primary">
                        删除文件夹
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- 删除一个文件模态框（Modal） -->
<div class="modal fade" id="deleteOneFolder" tabindex="-1" role="dialog" aria-labelledby="myModalLabel6"
     aria-hidden="true">
    <div class="modal-dialog" style="width: 760px;height: 180px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel6">
                    删除该文件/文件夹
                </h4>
            </div>
            <form action="deleteOneFolder" method="post">
                <div class="modal-body">
                    确 认 删 除 文 件 :
                    <p id="deleteNowFile" style="display: inline-block"></p> ?
                    <%--<input type="text" id="deletecurrentFolder" value="" class="form-control"--%>
                    <%--readonly="readonly"--%>
                    <%--style="width: 270px;height: 36px;margin: 2px 0px;display: inline-block;">--%>

                    <%--</input>--%>
                    <input name="OnefileId" id="deleteNowFileID" value="" style="display: none"/>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" class="btn btn-primary">
                        确认删除
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- 文件夹详情( 下载 )模态框（Modal） -->
<div class="modal fade" id="filesList" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel4">
                    文件上传下载记录
                </h4>
            </div>
            <form action="/downloads" method="post">
                <div class="modal-body">
                    下 载 文 件 :
                    <input type="text" id="currentFolder" value="我的文件夹" class="form-control"
                           readonly="readonly"
                           style="width: 270px;height: 36px;margin: 2px 0px;display: inline-block;">

                    </input>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" class="btn btn-primary">
                        确认下载
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- 文件夹详情( all下载 jilu)模态框（Modal） -->
<div class="modal fade" id="alldownload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width: 780px;height: 480px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="myModalLabel5">
                    文件上传/下载记录
                </h4>
            </div>
            <form action="/download" method="post">
                <div class="modal-body">
                    <%--已选择文件 :--%>
                    <input type="text" id="allsubmittoController" value="" class="form-control"
                           readonly="readonly"
                           style="width: 470px;height: 36px;margin: 2px 0px;display:none">

                    </input>
                    <input type="text" name="filepath" value="${filepath}" style="display: none;"/>
                    <table id="filderListTable2" class="table table-hover">
                        <thead>
                        <tr>
                            <td></td>
                            <th> 文件名</th>
                            <th> 大小</th>
                            <th> 修改时间</th>
                            <th>操作</th>
                            <%--<th>说明</th>--%>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${logsList}" var="log">
                            <tr>
                                <td><input onclick="checkeddownloadfile()" type="checkbox"
                                           name="filesList"
                                           value="${log.logid}"></td>
                                <td><img src=${log.fileicon}> ${log.filename}</td>
                                <td>${log.sizes}</td>
                                <td>${log.logtime}</td>
                                <td>${log.logtype}</td>
                                    <%--<td>${log.logcontent}</td>--%>
                            </tr>
                        </c:forEach>
                        </tbody>

                    </table>
                </div>
                <div class="modal-footer">
                    <div style="float: left;">
                        <input type="button" value="全选" onclick="checkAllByBtn(1)" class="btn btn-sm btn-default">
                        <input type="button" value="全部取消" onclick="checkAllByBtn(0)" class="btn btn-sm btn-default">
                        <input type="button" value="反选" onclick="checkAllByBtn(2)" class="btn btn-sm btn-default">
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" class="btn btn-primary">
                        保存日志到本地
                    </button>
                </div>
                <%--<input id="allsubmittoController" type="text" value="" style="display: none"/>--%>
            </form>
        </div>
    </div>
</div>

<%--移动文件 模态框--%>
<div class="modal fade" id="moveFile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel7"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel7">
                    移动文件
                </h4>
            </div>
            <form action="" method="post">
                <div class="modal-body">
                    <ul id="browser" class="filetree treeview-famfamfam">
                        <c:forEach items="${folderlist}" var="fl">
                            <c:if test="${fl.filetype=='folder'}">
                                <li onclick="TreeFolder('${fl.foldername}',this)">
                                    <span class="folder">${fl.foldername}</span>
                                    <ul id="${fl.foldername}">
                                        <li><span class="folder">Item 1.1</span>
                                        </li>
                                    </ul>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消
                    </button>
                    <button type="submit" class="btn btn-primary">
                        确认移动
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<%--//选项卡--%>
<div id="myTabContent" class="tab-content">
    <!--主页右边部分的主要部分-->
    <div class="main-right-main tab-pane fade in active" id="allfile">
        <table class="table table-hover" style="font-size: 14px;font-family: '微软雅黑'">
            <caption>
                全部文件 : <i id="allfilestime">今天</i>
            </caption>
            <thead>
            <tr>
                <%--<th></th>--%>
                <th>文件名</th>
                <th>大小</th>
                <th>修改时间</th>
                <th>文件操作</th>
            </tr>
            </thead>
            <form action="detailFilesList" id="detailFilesListForm" method="get">
                <input style="display: none" name="detailFilesListName" id="detailFilesListID">
                <%--<input style="display: none" name="usermail" value="${usermail}">--%>
                <%--<input style="width: 500px;" type="text" value="${filepath}">--%>
                <input style="width: 500px; display:none;" id="filepath" name="filepath" value="${filepath}">
            </form>
            <tbody>
            <c:forEach items="${folderlist}" var="fl">
                <c:choose>
                    <c:when test="${fl.foldername!=null}">
                        <tr>
                                <%--<td></td>--%>
                            <c:choose>
                                <c:when test="${fl.filetype=='folder'}">
                                    <%--<td><input onclick="checkeddownloadfile()" type="checkbox" name="filesList"--%>
                                    <%--value="${fl.foldername}"></td>--%>
                                    <td onclick="detailFilesList('${fl.foldername}','${fl.filepath}')"><img
                                            src=${fl.icon}> ${fl.foldername}</td>
                                </c:when>
                                <c:otherwise>
                                    <%--<td><input onclick="checkeddownloadfile()" type="checkbox" name="filesList"--%>
                                    <%--value="${fl.foldername}"></td>--%>
                                    <td><img src=${fl.icon}> ${fl.foldername}</td>
                                </c:otherwise>
                            </c:choose>
                            <td>${fl.sizes}</td>
                            <td>${fl.updatetime}</td>
                            <td>
                                <button onclick="deleteone('${fl.folderid}','${fl.foldername}')" data-toggle="modal"
                                        data-target="#deleteOneFolder" class="btn btn-sm btn-default">
                                    删 除
                                </button>
                                <c:choose>
                                    <c:when test="${fl.filetype=='txt'||fl.filetype=='jpg'||fl.filetype=='png'}">
                                        <a href="download?filename=${fl.foldername}&filepath=${fl.filepath}">
                                            <button class="btn btn-sm btn-default">
                                                下 载
                                            </button>
                                                <%--onclick="download('${fl.folderid}')" data-toggle="modal"--%>
                                                <%--data-target="#filesList"--%>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href=${fl.s3url}>
                                            <button class="btn btn-sm btn-default">
                                                下 载
                                            </button>
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                                <button class="btn btn-sm btn-default">重命名</button>
                                <button onclick="moveFile()" data-toggle="modal"
                                        data-target="#moveFile" class="btn btn-sm btn-default">移动文件
                                </button>
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td><img src="img/nofile.jpg"></td>
                            <td>这里没有任何文件哦 , 点击上传按钮开始上传吧 .</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="main-right-main  tab-pane fade" id="note">
        2
    </div>
    <div class="main-right-main  tab-pane fade" id="images">
        3
    </div>
    <div class="main-right-main  tab-pane fade" id="document">
        4
    </div>
    <div class="main-right-main  tab-pane fade" id="viedeo">
        5
    </div>
    <div class="main-right-main  tab-pane fade" id="music">
        6
    </div>
    <div class="main-right-main  tab-pane fade" id="others">
        7
    </div>
    <div class="main-right-main tab-pane  fade" id="share">
        8
    </div>
    <div class="main-right-main  tab-pane fade" id="recycle-bin">
        9
    </div>
</div>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/treeview.js"></script>
<script>
    $(function () {
        function setRem() {
            var clientWidth = $(window).width();
            var nowRem = (clientWidth / 375 * 10);
            $("html").css("font-size", parseInt(nowRem, 10) + "px");
        };
        setRem();

        $(function () {
            var timer;
            $(window).bind("resize", function () {
                clearTimeout(timer);
                timer = setTimeout(function () {
                    setRem();
                }, 100)
            })
        });
    })
</script>
<script>
    $(document).ready(function () {
        $("#browser").treeview({
            toggle: function () {
            }
        });

    });
</script>
<script>
    window.onload = function () {
        var now = new Date();
        var year = now.getFullYear();       //年
        var month = now.getMonth() + 1;     //月
        var day = now.getDate();            //日
        var hh = now.getHours();            //时
        var mm = now.getMinutes();          //分
        // var time1 = now.toLocaleString( );
        var label = document.getElementById("allfilestime");
        label.innerText = year + "-" + month + "-" + day + " " + hh + ":" + mm;
    }
</script>
<script>
    function change() {
        document.getElementById("upload_file_tmp").value = document.getElementById("batchFile").value;
    }

    //新建文件夹
    function displayResult() {
        var radios = document.getElementsByName('optionsRadios');
        for (var i = 0, length = radios.length; i < length; i++) {
            if (radios[i].checked) {
                // alert(radios[i].value + "dis");
                // 选中后退出循环
                document.getElementById('radiovalue').value = radios[i].value;
                break;
            }
        }
    }

    //删除文件夹
    function deleteFolder() {
        var all = "";
        var radios = document.getElementsByName('deleteradio');
        for (var i = 0, length = radios.length; i < length; i++) {
            if (radios[i].checked) {
                // alert(radios[i].value);
                all = all + radios[i].value + '|';
            }
        }
        document.getElementById('deleteradiovalue').value = all;
    }

    function checkAllByBtn(num) { //全选，反选·全部取消等功能的实现
        var all = "";
        document.getElementById('allsubmittoController').value = '';
        var collMailChkNodes = document.getElementsByName("filesList")
        for (var i = 0; i < collMailChkNodes.length; i++) {
            if (num > 1) {
                collMailChkNodes[i].checked = !(collMailChkNodes[i].checked); //反选功能的实现(状态的转换)
            } else {
                collMailChkNodes[i].checked = num; //0和1表示0和非0，即flase和true
            }
        }

        for (var i = 0; i < collMailChkNodes.length; i++) {
            if (collMailChkNodes[i].checked) {
                // alert("one :" + collMailChkNodes[i].value);
                all = all + collMailChkNodes[i].value + ',';
            }
        }
        document.getElementById('allsubmittoController').value = all;
        // alert("aaall:" + all + collMailChkNodes.length);
    }

    function detailFilesList(foldername, filepath) {
        // alert(filepath);
        document.getElementById('detailFilesListID').value = foldername;
        document.getElementById('filepath').value = filepath;
        document.getElementById('detailFilesListForm').submit();
    }

    function moveDetail(ul) {
    }

    function deleteone(id, name) {
        // alert(id + name);
        var p = document.getElementById("deleteNowFile");
        var text = document.getElementById("deleteNowFileID");
        p.innerHTML = name;
        text.value = id;
    }

    function TreeFolder(id, th) {
        // $(this).empty();
        // th.append("<li>" + id + "</li>");
        // thi.empty();
        var li_1 = document.createElement("li");
        li_1.setAttribute("class", "folder");
        li_1.innerHTML = "hehehh";
        document.getElementById(id).appendChild(li_1);
        // alert(id);
    }

</script>
<script>
    // var base = $("#base").val().trim();
    function sumitbtn() {
        $("#houtaiyunxing").html("后台运行");
        // 进度条归零
        $("#progressBar").width("0%");
        // 上传按钮禁用
        // $(this).attr('disabled', false);
        document.getElementById("batchUploadBtn").disabled = true;
        // 进度条显示
        $("#progressBar").parent().show();
        $("#progressBar").parent().addClass("active");
        // 上传文件
        UpladFile();
    }

    // 文件修改时
    $("#batchFile").change(function () {
        $("#batchUploadBtn").val("上传");
        $("#progressBar").width("0%");
        var file = $(this).prop('files');
        if (file.length != 0) {
            $("#baifenbi").attr('disabled', false);
        }

    });

    function UpladFile() {
        var fileObj = $("#batchFile").get(0).files[0]; // js 获取文件对象
        console.info("上传的文件：" + fileObj);
        var FileController = "upload"; // 接收上传文件的后台地址
        // FormData 对象
        var form = new FormData();
        var filepaths = document.getElementById("updateFilepathID").value;
        // form.append("author", "hooyes"); // 可以增加表单数据
        form.append("file", fileObj); // 文件对象
        form.append("filepaths", filepaths);
        // alert(filepaths + "dddd");
        // XMLHttpRequest 对象
        var xhr = new XMLHttpRequest();
        xhr.open("post", FileController, true);
        xhr.onload = function () {
            // ShowSuccess("上传完成");
            // alert("文件上传完成 ! ");
            $("#batchUploadBtn").attr('disabled', false);
            $("#batchUploadBtn").val("上传");
            $("#progressBar").parent().removeClass("active");
            $("#progressBar").parent().hide();
            //$('#myModal').modal('hide');
            $("#baifenbi").html("文件上传已完成 ! ");
            $("#houtaiyunxing").html("取消");
        };
        xhr.upload.addEventListener("progress", progressFunction, false);
        xhr.send(form);
    }

    function progressFunction(evt) {
        var progressBar = $("#progressBar");
        if (evt.lengthComputable) {
            var completePercent = Math.round(evt.loaded / evt.total * 100) + "%";
            progressBar.width(completePercent);
            // $("#baifenbi").val("总进度 : " + completePercent);
            $("#baifenbi").html("总进度 : " + completePercent + "     ");
        }

    };
</script>
</body>

</html>