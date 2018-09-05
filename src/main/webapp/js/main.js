function filesubmit() {
    var files = document.getElementById("upload_file");
    var radios = document.getElementsByName('optionsRadios');
    var check = false;
    for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
            // alert(radios[i].value);
            // 选中后退出循环
            // document.getElementById('radiovalue').value = radios[i].value;
            check = true;
            break;
        }
    }
    if (files.value == '') {
        alert('你 还 没 选 择 文 件 呢 ! ');
    } else if (check == false) {
        alert('你 还 没 选 择 文 件 夹 呢 ! ');
    } else {
        var form = document.getElementById("uploadfilesForm");
        form.submit();
    }
}

function download(foldername) {
    // alert(foldername);
    document.getElementById("currentFolder").value = foldername;
}


//下载文件
function checkeddownloadfile() {
    var all = "";
    document.getElementById('allsubmittoController').value = '';
    var radios = document.getElementsByName('filesList');
    for (var i = 0, length = radios.length; i < length; i++) {
        if (radios[i].checked) {
            // alert("one :" + radios[i].value);
            all = all + radios[i].value + ",";
        }
    }
    document.getElementById('allsubmittoController').value = all;
    all = "";
    // alert("checkeddownloadfile all:" + all);
}


function TreeFolder() {
    alert("hellllo!");
}

