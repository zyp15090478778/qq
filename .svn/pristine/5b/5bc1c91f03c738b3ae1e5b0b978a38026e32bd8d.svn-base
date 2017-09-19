<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<title>智囊团</title>
<script language="javascript">
	function changeColor(obj, color) {
		obj.bgColor = color;
	}
</script>
<script language="javascript">
	var path = "${pageContext.request.contextPath}";
</script>
<script language="javascript"
	src="${pageContext.request.contextPath}/js/type_insert.js">
	
</script>
<script type="text/javascript" src="type_insert.js"></script>
<script language="javascript">
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
			action="${pageContext.request.contextPath}/jsp/back/backTypeAction_insert.action"
			method="post" onsubmit="return validate()">
			<table border="1" cellpadding="5" cellspacing="0" bgcolor="F2F2F2"
				width="100%">
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td colspan="3"><div align="center" class="STYLE1">增加新类型</div></td>
				</tr>
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td width="15%"><strong>类型名称：</strong></td>
					<td width="29%"><input type="text" name="type.title"
						id="type.title" onblur="validateTitle(this.value)"></td>
					<td width="56%"><span id="titleMsg">*</span></td>
				</tr>
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td><strong>类型描述：</strong></td>
					<td><input type="text" name="type.description"
						id="type.description" onblur="validateDescription(this.value)"></td>
					<td><span id="descriptionMsg">*</span></td>
				</tr>
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td colspan="3">
						<div align="center">
							<input type="submit" value="增加" /> <input type="reset"
								value="重置" />
						</div>
					</td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
