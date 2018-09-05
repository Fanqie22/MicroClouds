function checkusernumber() {
	// 获取当前用户名的输入的value
	var regPhone = /^1\d{10}$/;
	var regMail = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
	var userInput = document.getElementById("login-username");
	var strValue = userInput.value;
	var span = document.getElementById("login-username-messages");
	if (strValue == '' || strValue.length == 0 || strValue == null) {
		span.innerHTML = " &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  用 户 名 不 能 为 空 哦 !";
		span.style.color = "red";
		return false;
	} else if (regMail.test(strValue) || regPhone.test(strValue)) {
		span.innerHTML = "";
		// span.style.color = "green";
		return true;
	} else {
		span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  用 户 名 为 邮 箱 或 者 手 机 号 码 哦 !";
		span.style.color = "red";
		return false;
	}

}
// 对用户密码进行 校验
function checkpassword() {
	var userInput = document.getElementById("login-password");
	// 获取当前用户名的输入的value
	var strValue = userInput.value;
	var span = document.getElementById("login-password-messages");
	if (strValue == null || strValue.length == 0) {
		span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>   密 码 不 能 为 空 哦 !";
		span.style.color = "red";
		return false;
	} else if (strValue.length > 4 && strValue.length < 16) {
		span.innerHTML = ""
		// span.style.color = "green";
		return true;
	} else {
		span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  这 不 可 能 是 正 确 的 密 码 !";
		span.style.color = "red";
		return false;
	}
}

function checkloginVerificationCode() {
	var userInput = document.getElementById("login-VerificationCode");
	// 获取当前用户名的输入的value
	var strValue = userInput.value;
	var span = document.getElementById("login-VerificationCode-messages");
	if (strValue == null || strValue.length == 0) {
		span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>   验 证 码 不 能 为 空 哦 !";
		span.style.color = "red";
		return false;
	} else if (strValue == "100") {
		span.innerHTML = ""
		// span.style.color = "green";
		return true;
	} else {
		span.innerHTML = "  &nbsp; &nbsp;  <i class='glyphicon glyphicon-remove-sign'></i>  这 不 可 能 是 正 确 的 验 证 码 !";
		span.style.color = "red";
		return false;
	}
}

function checkloginfrom() {
	return checkusernumber() && checkpassword() && checkloginVerificationCode();
}