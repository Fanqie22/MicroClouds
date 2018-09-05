<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/2
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>

<a href="https://s3-ap-southeast-1.amazonaws.com/microclouds/skin.jpg" download="19960606060">kkkkkk</a>

<button type="button" class="btn btn-success btn-lg"
        data-toggle="modal" data-target="#batchImportModal">upload
</button>
<!-- Modal -->
<div id="batchImportModal" class="modal fade" role="dialog"
     aria-labelledby="gridSystemModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">批量导入用户</h4>
            </div>
            <div class="modal-body">
                <div class="form-group" id="passwordDiv">
                    <label>选择用户数据文件</label>
                    <input class="form-control" type="file" id="batchFile">
                    <hr>
                </div>
                <div style="text-align: center">
                    <p type="text" id="baifenbi"></p>
                </div>
                <div class="progress progress-striped active" style="display: none">
                    <div id="progressBar" class="progress-bar progress-bar-info"
                         role="progressbar" aria-valuemin="0" aria-valuenow="0"
                         aria-valuemax="100" style="width: 0%">
                    </div>
                </div>
                <div class="form-group">
                    <input id="batchUploadBtn" onclick="sumitbtn()" type="submit" name="submit" class="btn btn-success"
                           value="上传"/>
                    <button type="button" class="btn btn-primary"
                            data-dismiss="modal">关 闭
                    </button>
                </div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script>
    // var base = $("#base").val().trim();
    function sumitbtn() {
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
        // form.append("author", "hooyes"); // 可以增加表单数据
        form.append("file", fileObj); // 文件对象
        // XMLHttpRequest 对象
        var xhr = new XMLHttpRequest();
        xhr.open("post", FileController, true);
        xhr.onload = function () {
            // ShowSuccess("上传完成");
            alert("上传完成");
            $("#batchUploadBtn").attr('disabled', false);
            $("#batchUploadBtn").val("上传");
            $("#progressBar").parent().removeClass("active");
            $("#progressBar").parent().hide();
            //$('#myModal').modal('hide');
            $("#baifenbi").html("文件上传已完成!");
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
            $("#baifenbi").html("总进度 : " + completePercent);
        }

    };
</script>
</body>
</html>
