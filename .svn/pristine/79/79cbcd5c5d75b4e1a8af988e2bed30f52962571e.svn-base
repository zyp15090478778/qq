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
	function deleteType() {
		return window.confirm("确定要删除吗？");
	}
</script>
<style type="text/css">
<!--
.STYLE2 {
	font-size: 12px
}
-->
</style>
</head>

<body>
	<center>
		<h1>问题分类</h1>
		<s:if test="#request.list!=null">
			<table border="1" cellpadding="5" cellspacing="0" bgcolor="F2F2F2"
				width="100%">
				<tr onMouseOver="changeColor(this,'white')"
					onMouseOut="changeColor(this,'F2F2F2')">
					<td width="13%"><div align="center">
							<strong>类型编号</strong>
						</div></td>
					<td width="23%"><div align="center">
							<strong>名称</strong>
						</div></td>
					<td width="50%"><div align="center">
							<strong>描述</strong>
						</div></td>
					<td colspan="2"><div align="center">
							<strong>操作</strong>
						</div></td>
				</tr>
				<s:iterator value="#request.list">
					<tr onMouseOver="changeColor(this,'white')"
						onMouseOut="changeColor(this,'F2F2F2')">
						<td width="13%"><div align="center">
								<span class="STYLE2">${tid}</span>
							</div></td>
						<td width="23%"><div align="center">
								<span class="STYLE2">${title}</span>
							</div></td>
						<td width="50%"><div align="center">
								<span class="STYLE2">${description}</span>
							</div></td>
						<td width="7%"><div align="center">
								<span class="STYLE2"> <a href="${pageContext.request.contextPath}/jsp/back/backTypeAction_updatePre.action?type.tid=${tid}">修改</a></span>
							</div></td>
						<!-- ${pageContext.request.contextPath}/jsp/back/backTypeAction_updatePre.action?type.tid=${tid} -->
						<td width="7%"><div align="center">
								<span class="STYLE2"> <a
									href="${pageContext.request.contextPath}/jsp/back/backTypeAction_doRemove.action?type.tid=${tid}"
									onclick="return deleteType()">删除</a></span>
							</div></td>
					</tr>
				</s:iterator>
			</table>
		</s:if>
	</center>
</body>
</html>
