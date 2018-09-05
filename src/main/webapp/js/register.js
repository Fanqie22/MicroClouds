function checkuserMail() {
    // 获取当前用户名的输入的value
    var regMail = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    var userInput = document.getElementById("registerMail");
    var strValue = userInput.value;
    var span = document.getElementById("register-mail-messages");
    if (strValue == '' || strValue.length == 0 || strValue == null) {
        span.innerHTML = " &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>   注 册 的 邮 箱 号 不 能 为 空 哦 !";
        span.style.color = "red";
        return false;
    } else if (regMail.test(strValue)) {
        span.innerHTML = "";
        // span.style.color = "green";
        $.ajax({
            url: "mailnumcheck",
            type: "POST",
            datatype: "text",
            data: {
                "mail": $("#registerMail").val()
            },
            success: function (data) {
                var userInput = document.getElementById("registerMail");
                var strValue = userInput.value;
                if (data == "0") {
                    span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  这 个 邮 箱 号 已 经 注 册 啦 !";
                    span.style.color = "red";
                    return false;
                } else {
                    span.innerHTML = "";
                    //span.style.color = "green";
                    return true;
                }
            }
        })
        return true;
    } else {
        span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  这 不 是 有 效 的 邮 箱 号 哦 !";
        span.style.color = "red";
        return false;
    }
}

// 对用户密码进行 校验
function checkregisterpassword() {
    var userInput = document.getElementById("registerPassword");
    // 获取当前用户名的输入的value
    var strValue = userInput.value;
    var span = document.getElementById("register-password-messages");
    if (strValue == null || strValue.length == 0) {
        span.innerHTML = "   &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  密 码 不 能 为 空 哦 !";
        span.style.color = "red";
        return false;
    } else if (strValue.length > 4 && strValue.length < 16) {
        span.innerHTML = ""
        // span.style.color = "green";
        return true;
    } else {
        span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  密 码 的 位 数 应 为 5-16 位 数 哦 !";
        span.style.color = "red";
        return false;
    }
}

// 对用户密码进行 校验
function checkregisterRepassword() {
    var userInput = document.getElementById("registerPassword");
    var ReuserInput = document.getElementById("registerRePassword");
    // 获取当前用户名的输入的value
    var strValue = userInput.value;
    var RestrValue = ReuserInput.value;
    var span = document.getElementById("register-repassword-messages");
    var mails = $("#registerMail").val();
    if (strValue == RestrValue) {
        span.innerHTML = "";
        return true;
    } else {
        span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  两 次 输 入  的 密 码 不 一 致 !";
        span.style.color = "red";
        return false;
    }
}

var time = 120;
var flag = true;
var id;

function showTime() {
    if (time > 0) {
        time--;
        $("#register-send-btn").val(time + "秒后重新发送验证码");
    } else {
        $("#register-send-btn").val("重新获取邮箱验证码");
        $("#register-send-btn").attr("disabled", false);
        flag = true;
        time = 120;
        clearInterval(id);
    }
}

var finalcode;

function sendmail() {
    //alert('sendmail');
    var userInput = document.getElementById("mailcode");
    var strValue = userInput.value;
    var span = document.getElementById("register-codes-messages");
    if (checkuserMail() && checkregisterpassword() && checkregisterRepassword()) {
        $("#register-send-btn").attr("disabled", true);
        $.ajax({
            url: "mailcheck",
            type: "POST",
            datatype: "text",
            data: {
                "mail": $("#registerMail").val()
            },
            success: function (data) {
                finalcode = data;
            }
        })
        // $("#register-send-btn").attr("disabled", true);
        if (time == 120) {
            this.value = "120秒后重新发送验证码";
            // 开启定时器
            id = setInterval(showTime, 1000);
            flag = false;
        }
    } else {
        span.innerHTML = " &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  前 面 注 册 填 写 的 信 息 为 空 或 者 出 错  !";
        span.style.color = "red";
        return false;
    }
}

function mailcodecheck() {
    var userInput = document.getElementById("mailcode");
    var strValue = userInput.value;
    var span = document.getElementById("register-codes-messages");
    if (strValue == finalcode) {
        return true;
    } else {
        span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  输 入 的 验 证 码 为 空 或 者 错 误  !";
        span.style.color = "red";
        return false;
    }
}

function checkregisterfrom() {
    return checkuserMail() && checkregisterpassword()
        && checkregisterRepassword()
        && mailcodecheck();
}
