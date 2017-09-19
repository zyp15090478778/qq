var xmlHttp; // AJAX对象完成
var callbackResult = "false"; // 用于表示是否对验证码进行验证
var flag = false; // 接收validateCode()函数的返回值
function createXMLHttp() { // 创建XMLHttpRequest核心对象
	if (window.XMLHttpRequest) { // 判断当前使用的浏览器的类型
		xmlHttp = new XMLHttpRequest(); // 使用的是FireFox内核
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
}

function validateUserid(userid) {
	if (userid != "") {
		createXMLHttp();// 创建XMLHttp对象
		xmlHttp.open("post", path + "/frontUserAction_userId.action?userId="+userid);
		xmlHttp.onreadystatechange = validateUseridCallback;// 定义回调函数的使用
		xmlHttp.send(null);
		flag = true;
	} else {

		document.getElementById("useridMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">"
				+ "<font color=\"red\">用户名不能为空！</font>";

		flag = false;
	}
}

function validateUseridCallback() { // 定义回调函数
	if (xmlHttp.readyState == 4) { // 数据返回完毕
		if (xmlHttp.status == 200) { // HTTP操作正常
			callbackResult = xmlHttp.responseText; // 接收返回的内容
			if (callbackResult != "true") {
				document.getElementById("useridMsg").innerHTML = "<img src=\""
						+ "/images/right.gif\">"
						+ "<font color=\"green\">用户名可用！</font>";
				flag = true;
			} else {
				document.getElementById("useridMsg").innerHTML = "<img src=\""
						+ "/images/wrong.gif\">"
						+ "<font color=\"red\">用户名已拥有！</font>";
				flag = false;
			}
		}
	}
}

function validatePassword(password) {
	if (password == "") {
		document.getElementById("passwordMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">" + "<font color=\"red\">密码不能为空！</font>";
		return false;
	} else {
		document.getElementById("passwordMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">" + "<font color=\"green\">密码可用！</font>";
		return true;
	}
}

function validateConfpassword(confpassword) {
	if (confpassword == document.getElementById("user.password").value) {

		document.getElementById("confpasswordMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">"
				+ "<font color=\"green\"> 密码一致！</font>";
		return true;

	} else {
		document.getElementById("confpasswordMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">"
				+ "<font color=\"red\"> 密码不一致重新输入！</font>";
		return false;
	}

}

function validateEmail(email) {
	if (email == "") {
		document.getElementById("emailMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">"
				+ "<font color=\"red\"> 邮箱格式不正确！</font>";
		return true;
	} else if (/[a-zA-Z0-9]@\w+\.(com|net|cn|com\.cn|net\.cn|org|gov|edu)/
			.test(email)) {
		document.getElementById("emailMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">"
				+ "<font color=\"green\"> 邮箱正确！</font>";
		return true;
	} else {
		document.getElementById("emailMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">"
				+ "<font color=\"red\"> 邮箱格式不可用！</font>";

		return false;
	}
}

function validateForm() {
	return flag;
}