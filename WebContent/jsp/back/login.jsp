<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>网站管理员登陆</title>
<script type="text/javascript" src="js/admin_login.js"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}
-->
</style>
<script language="javascript">
	var path = "${pageContext.request.contextPath}";
</script>
<script type="text/javaScript">
	function correctPNG() {
		var arVersion = navigator.appVersion.split("MSIE")
		var version = parseFloat(arVersion[1])
		if ((version >= 5.5) && (document.body.filters)) {
			for (var j = 0; j < document.images.length; j++) {
				var img = document.images[j]
				var imgName = img.src.toUpperCase()
				if (imgName.substring(imgName.length - 3, imgName.length) == "PNG") {
					var imgID = (img.id) ? "id='" + img.id + "' " : ""
					var imgClass = (img.className) ? "class='" + img.className
							+ "' " : ""
					var imgTitle = (img.title) ? "title='" + img.title + "' "
							: "title='" + img.alt + "' "
					var imgStyle = "display:inline-block;" + img.style.cssText
					if (img.align == "left")
						imgStyle = "float:left;" + imgStyle
					if (img.align == "right")
						imgStyle = "float:right;" + imgStyle
					if (img.parentElement.href)
						imgStyle = "cursor:hand;" + imgStyle
					var strNewHTML = "<span "
							+ imgID
							+ imgClass
							+ imgTitle
							+ " style=\""
							+ "width:"
							+ img.width
							+ "px; height:"
							+ img.height
							+ "px;"
							+ imgStyle
							+ ";"
							+ "filter:progid:DXImageTransform.Microsoft.AlphaImageLoader"
							+ "(src=\'" + img.src
							+ "\', sizingMethod='scale');\"></span>"
					img.outerHTML = strNewHTML
					j = j - 1
				}
			}
		}
	}
	window.attachEvent("onload", correctPNG);
</script>


<link href="images/skin.css" rel="stylesheet" type="text/css">
<body>
	<table width="100%" height="166" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="42" valign="top"><table width="100%" height="42"
					border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
					<tr>
						<td width="1%" height="21">&nbsp;</td>
						<td height="42">&nbsp;</td>
						<td width="17%">&nbsp;</td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td valign="top">
				<table width="100%" height="532" border="0" cellpadding="0"
					cellspacing="0" class="login_bg">
					<tr>
						<td width="49%" align="right"><table width="91%" height="532"
								border="0" cellpadding="0" cellspacing="0" class="login_bg2">
								<tr>
									<td height="138" valign="middle" align="right"><img
										src="images/logo.png" width="279" height="68"></td>
								</tr>

							</table></td>
						<td width="1%">&nbsp;</td>
						<td width="50%" valign="bottom"><table width="100%"
								height="59" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="4%">&nbsp;</td>
									<td width="96%" height="38"><span class="login_txt_bt">管理后台登录</span></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td height="21"><table cellSpacing="0" cellPadding="0"
											width="100%" border="0" id="table211" height="328">
											<tr>
												<td height="164" colspan="2" align="center">
													<form name="myform"
														action="${pageContext.request.contextPath}/frontAdminAction_login.action"
														method="post"  onsubmit="return validateForm()">
														<table cellSpacing="0" cellPadding="0" width="100%"
															border="0" height="143" id="table212">
															<tr>
																<td width="13%" height="38" class="top_hui_text"><span
																	class="login_txt">管理员：&nbsp;&nbsp; </span></td>
																<td height="38" colspan="2" class="top_hui_text"><input
																	name="admin.adminid" id="admin.adminid"
																	class="editbox4" value="" size="20"
																	onblur="validateAdminId(this.value)"/>
																	<span id="adminIdMsg">*</span></td>
															</tr>
															<tr>
																<td width="13%" height="35" class="top_hui_text"><span
																	class="login_txt"> 密 码： &nbsp;&nbsp; </span></td>
																<td height="35" colspan="2" class="top_hui_text"><input
																	class="editbox4" type="password" size="20"
																	name="admin.password" id="admin.password"
																	onblur="validatePassword(this.value)"> <img
																	src="images/luck.gif" width="19" height="18"> <span
																	id="passwordMsg">*</span></td>
															</tr>
															<tr>
																<td width="13%" height="35"><span class="login_txt">验证码：</span></td>
																<td height="35" colspan="2" class="top_hui_text">
																	<!-- <input class="wenbenkuang" name="verifycode" type="text"
																		value="" maxLength="4" size="10"> --> <input
																	type="text" class="login_code" name="code" id="code"
																	maxlength="4" size="4"
																	onblur="validateCode(this.value)" /> <img
																	src="image.jsp"onclick="this.src='${pageContext.request.contextPath}/image.jsp?d='+Math.random();"> <span id="codeMsg">*</span>
																</td>
															</tr>
															<tr>
																<td height="35">&nbsp;</td>
																<td width="20%" height="35"><input name="Submit"
																	type="submit" class="button" id="Submit" value="登 陆">
																</td>
																<td width="67%" class="top_hui_text"><input
																	name="cs" type="button" class="button" id="cs"
																	value="取 消" onClick="showConfirmMsg1()"></td>
															</tr>
														</table>
														<br>
													</form>
												</td>
											</tr>
											<tr>
												<td width="433" height="164" align="right" valign="bottom"><img
													src="images/login-wel.gif" width="242" height="138"></td>
												<td width="57" align="right" valign="bottom">&nbsp;</td>
											</tr>
										</table></td>
								</tr>
							</table></td>
					</tr>
				</table>
			</td>
		</tr>

	</table>
</body>

</html>