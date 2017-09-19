var xmlHttp ;	// AJAX对象完成
var callbackResult = "false" ;	// 用于表示是否对验证码进行验证
var flag = false ;	// 接收validateCode()函数的返回值
function createXMLHttp() {	// 创建XMLHttpRequest核心对象
	if (window.XMLHttpRequest) {	// 判断当前使用的浏览器的类型
		xmlHttp = new XMLHttpRequest() ;	// 使用的是FireFox内核
	} else {
		xmlHttp = new ActiveXObject("Microsoft.XMLHTTP") ;
	}
}
function validateCode(code) {
	createXMLHttp() ;	// 创建XMLHttp对象
	xmlHttp.open("POST", path+"/frontAdminAction_validateCode.action?code=" + code);
	xmlHttp.onreadystatechange = validateCodeCallback ;	// 定义回调函数的使用
	xmlHttp.send(null) ;
}
function validateCodeCallback() {	// 定义回调函数
	if (xmlHttp.readyState == 4) {	// 数据返回完毕
		if (xmlHttp.status == 200) {	// HTTP操作正常
			callbackResult = xmlHttp.responseText ;	// 接收返回的内容
			if(callbackResult == "true") {
				document.getElementById("codeMsg").innerHTML = "<img src=\""
						+ "/images/right.gif\">"
						+ "<font color=\"green\">验证码输入正确！</font>" ;
				flag = true ;
			} else {
				document.getElementById("codeMsg").innerHTML = "<img src=\""
					+ "/images/wrong.gif\">"
					+ "<font color=\"red\">验证码输入错误！</font>" ;
				flag = false ;
			}
		}
	}
}
function validateAdminId(userid) {
	if(userid != "") {
		document.getElementById("adminIdMsg").innerHTML = "<img src=\""
			+ "/images/right.gif\">"
			+ "<font color=\"green\">用户名输入正确！</font>" ;
		return true ;
	} else {
		document.getElementById("adminIdMsg").innerHTML = "<img src=\""
			+ "/images/wrong.gif\">"
			+ "<font color=\"red\">用户名不能为空！</font>" ;
		return false ;
	}
}
function validatePassword(password) {
	if(password != "") {
		document.getElementById("passwordMsg").innerHTML = "<img src=\""
			+ "/images/right.gif\">"
			+ "<font color=\"green\">密码输入正确！</font>" ;
		return true ;
	} else {
		document.getElementById("passwordMsg").innerHTML = "<img src=\""
			+ "/images/wrong.gif\">"
			+ "<font color=\"red\">密码不能为空！</font>" ;
		return false ;
	}
}
function validateForm() {
	return 	validateUserid(document.getElementById("user.userid").value) &&
			validatePassword(document.getElementById("user.password").value) &&
			flag ;
}