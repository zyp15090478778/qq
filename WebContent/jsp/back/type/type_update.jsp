<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>智囊团</title>
<script type="text/javascript">
	function changeColor(obj, color) {
		obj.bgColor = color;
	}
</script>
<script type="text/javascript">
	var path = "${pageContext.request.contextPath}";
</script>

<style type="text/css">
<!--
.STYLE1 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
	<center>
		<form
			action="${pageContext.request.contextPath}/jsp/back/backTypeAction_doUpdate.action"
			method="post" onsubmit="return validate()">
			<%-- <s:if test="#request.type!=null"> --%>
			<table border="1" cellpadding="5" cellspacing="0" bgcolor="F2F2F2"
				width="100%">
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td colspan="3"><div align="center" class="STYLE1">修改问题类型</div></td>
				</tr>
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td width="15%"><strong>类型名称：</strong></td>
					<td width="29%"><input type="text" name="type.title"
						id="type.title" onblur="validateTitle(this.value)"
						value="${type.title}"></td>
					<td width="56%"><span id="titleMsg">*</span></td>
				</tr>
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td><strong>类型描述：</strong></td>
					<td><input type="text" name="type.description"
						id="type.description" onblur="validateDescription(this.value)"
						value="${type.description}"></td>
					<td><span id="descriptionMsg">*</span></td>
				</tr>
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td colspan="3">
						<div align="center">
							<input type="hidden" name="type.tid" id="type.tid"
								value="${type.tid}"> <input type="submit" value="修改" />
							<input type="reset" value="重置" />
						</div>
					</td>
				</tr>
			</table>
			<%-- </s:if> --%>
		</form>
	</center>
</body>
<script type="text/javascript">
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
		return validateTitle(document.getElementById("type.title").value)
				|| validateDescription(document.getElementById("type.description").value) || flag;
	}
</script>
</html>
