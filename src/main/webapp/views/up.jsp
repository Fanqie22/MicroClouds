<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/12
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>MicroCloudDisks 一个方便的云盘</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="css/diskmain.css">
    <%--<link rel="stylesheet" href="css/treeview.css">--%>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <%--<script type="text/javascript" src="js/treeview.js"></script>--%>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
    <%--<div class="modal-dialog" style="width: 720px;height: 300px;">--%>
        <%--<div class="modal-content">--%>
            <%--<div class="modal-header">--%>
                <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">--%>
                    <%--&times;--%>
                <%--</button>--%>
                <%--<h4 class="modal-title" id="myModalLabel" style="display: inline-block">--%>
                    <%--文件上传--%>
                <%--</h4>--%>
                <%--<h5 style="display: inline-block">( 小提示 : 将多个文件压缩成一个压缩文件上传速度更快哦 ! )</h5>--%>
            <%--</div>--%>
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
            <%--</div>--%>
            <%--<input id="updateFilepathID" name="filepath" value="${filepath}" style="width: 600px;display: none;"/>--%>
            <%--&lt;%&ndash;<input id="radiovalue" name="radiovalue" type="text" style="display:none" value=""/>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</form>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<div class="modal-footer">&ndash;%&gt;--%>

                <%--<div style="text-align: center">--%>
                    <%--<p type="text" id="baifenbi"></p>--%>
                <%--</div>--%>
                <%--<div class="progress progress-striped active" style="display: none">--%>
                    <%--<div id="progressBar" class="progress-bar progress-bar-info"--%>
                         <%--role="progressbar" aria-valuemin="0" aria-valuenow="0"--%>
                         <%--aria-valuemax="100" style="width: 0%">--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<button id="houtaiyunxing" type="button" class="btn btn-default" data-dismiss="modal" value="">取消--%>
                <%--</button>--%>
                <%--&lt;%&ndash;onclick="filesubmit()"&ndash;%&gt;--%>
                <%--<button id="batchUploadBtn" onclick="sumitbtn()" type="button" class="btn btn-primary">--%>
                    <%--开始上传--%>
                <%--</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/treeview.js"></script>
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
        alert(filepath);
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
        alert(id);
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
        alert(filepaths + "dddd");
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
