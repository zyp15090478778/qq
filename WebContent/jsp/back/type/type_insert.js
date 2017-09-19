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

function validateTitle(title) {
	if (title != "") {

		createXMLHttp();// 创建XMLHttp对象
		xmlHttp.open("post", path
				+ "/jsp/back/backTypeAction_title.action?title=" + title);
		xmlHttp.onreadystatechange = validateTitleCallback;// 定义回调函数的使用
		xmlHttp.send(null);
		flag = true;
	} else {
		document.getElementById("titleMsg").innerHTML = "<img src=\""
				+ "/images/wrong.gif\">"
				+ "<font color=\"red\">类型名字不能为空！</font>";
		flag = false;
	}

}

function validateTitleCallback() {

	if (xmlHttp.readyState == 4) { // 数据返回完毕
		if (xmlHttp.status == 200) { // HTTP操作正常
			var callbackResult = xmlHttp.responseText; // 接收返回的内容
			if (callbackResult != "true") {
				document.getElementById("titleMsg").innerHTML = "<img src=\""
						+ "/images/right.gif\">"
						+ "<font color=\"green\">类型名字可用！</font>";
				flag = true;
			} else {
				document.getElementById("titleMsg").innerHTML = "<img src=\""
						+ "/images/wrong.gif\">"
						+ "<font color=\"red\">类型名字已拥有！</font>";
				flag = false;
			}
		}
	}
}

function validateDescription(description) {
	if (description != "") {
		document.getElementById("descriptionMsg").innerHTML = "<img src=\""
				+ "/images/right.gif\">"
				+ "<font color=\"green\">类型描述可用！</font>";
		flag = true;
	} else {
		document.getElementById("descriptionMsg").innerHTML = "<img src=\""
				+ "/images/wrong.gif\">"
				+ "<font color=\"red\">类型描述不能为空！</font>";
		flag = false;
	}
}

function validate() {
	return flag || validateTitle(document.getElementById("type.title").value)
			|| validateDescription(document.getElementById("type.description").value);
}