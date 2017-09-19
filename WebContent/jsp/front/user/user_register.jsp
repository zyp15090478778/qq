<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户注册</title>
<script language="javascript">
	var path = "${pageContext.request.contextPath}";
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/user_register.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/PNG_IMG.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/tag.js"></script>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<table width="1000" border="0" cellspacing="0" cellpadding="0"
		align="center">
		<tr>
			<td>
				<!--logo and navigation start-->
				<table width="1000" border="0" cellspacing="0" cellpadding="0"
					class="top_nav_logo">
					<tr>
						<td width="220" rowspan="2" align="center" valign="middle"><img
							src="${pageContext.request.contextPath}/images/logo.gif"
							width="193" height="70" border="0" /></td>
						<td class="top_user_info"><a href="UserIndex.htm"
							class="a_12_666" title="进入个人中心">个人中心</a> | <a href="#"
							class="a_12_666" title="退出登录">退出登录</a></td>
					</tr>
					<tr>
						<td>
							<!--navigation start-->
							<table width="608" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="120" align="center"><a href="index.htm"
										title="智囊团首页"><img
											src="${pageContext.request.contextPath}/images/nav_button01.gif"
											width="80" height="16" border="0" /> </a></td>
									<td width="2" align="center"><img
										src="${pageContext.request.contextPath}/images/nav_line.gif"
										width="2" height="17" border="0" /></td>
									<td width="136" align="center"><a href="QuestionList.htm"
										title="最新解决问题"><img
											src="${pageContext.request.contextPath}/images/nav_button02.gif"
											width="96" height="16" border="0" /> </a></td>
									<td width="2" align="center"><img
										src="${pageContext.request.contextPath}/images/nav_line.gif"
										width="2" height="17" border="0" /></td>
									<td width="104" align="center"><a href="QuestionList.htm"
										title="最新提问"><img
											src="${pageContext.request.contextPath}/images/nav_button03.gif"
											width="64" height="16" border="0" /> </a></td>
									<td width="2" align="center"><img
										src="${pageContext.request.contextPath}/images/nav_line.gif"
										width="2" height="17" border="0" /></td>
									<td width="120" align="center"><a href="UserIndex.htm"
										title="进入用户中心"><img
											src="${pageContext.request.contextPath}/images/nav_button04.gif"
											width="80" height="16" border="0" /> </a></td>
									<td width="2" align="center"><img
										src="${pageContext.request.contextPath}/images/nav_line.gif"
										width="2" height="17" border="0" /></td>
									<td width="120" align="center"><a href="UserReg.htm"
										title="用户注册"><img
											src="${pageContext.request.contextPath}/images/nav_button05.gif"
											width="80" height="16" border="0" /> </a></td>
								</tr>
							</table> <!--navigation end-->
						</td>
					</tr>
				</table> <!--logo and navigation end-->
			</td>
		</tr>
		<tr>
			<td align="center" valign="middle" class="top_search">
				<!--top search start-->
				<form>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="480" align="right"><input
								class="top_search_input" type="text" /></td>
							<td width="120" align="right"><input type="image"
								src="${pageContext.request.contextPath}/images/top_search_button01.png"
								width="110" height="35" border="0" /></td>
							<td width="80" align="right"><input type="image"
								src="${pageContext.request.contextPath}/images/top_search_button02.png"
								width="70" height="35" border="0" /></td>
							<td width="80" align="right"><input type="image"
								src="${pageContext.request.contextPath}/images/top_search_button03.png"
								width="70" height="35" border="0" /></td>
							<td width="240" valign="middle" align="center"
								class="top_search_info">已解决：10256个问题 <br /> 待解决：2360个问题
							</td>
						</tr>
					</table>
				</form> <!--top search end-->
			</td>
		</tr>
		<tr>
			<td class="container">
				<!--content start-->

				<div class="user_reg_content">
					<div class="user_reg_container">
						<form action="${pageContext.request.contextPath}/frontUserAction_register.action" method="post"
							onsubmit="return validateForm()">
							<table width="420" border="0" cellspacing="0" cellpadding="0"
								align="center" class="user_reg_table">
								<tr>
									<td colspan="2" class="user_reg_title" valign="middle"
										height="32">用户注册</td>
								</tr>
								<tr>
									<td width="80" class="text_14_666">用&nbsp;户&nbsp;名：</td>
									<td width="200" align="left"><input type="text"
										class="user_reg_input" name="user.userid" id="user.userid"
										onblur="validateUserid(this.value)" /></td>
									<td width="340" align="left"><span id="useridMsg">*</span>
									</td>
								</tr>
								<tr>
									<td class="text_14_666">性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
									<td align="left"><input type="radio" name="user.sex"
										value="man" checked="checked" /> 男&nbsp;&nbsp;&nbsp;&nbsp; <input
										type="radio" name="user.sex" value="woman" /> 女</td>
									<td width="340" align="left"><span id="sexMsg">*</span></td>
								</tr>
								<tr>
									<td class="text_14_666">输入密码：</td>
									<td align="left"><input type="password"
										class="user_reg_input" name="user.password" id="user.password"
										onblur="validatePassword(this.value)" /></td>
									<td width="340" align="left"><span id="passwordMsg">*</span>
									</td>
								</tr>
								<tr>
									<td class="text_14_666">确认密码：</td>
									<td align="left"><input type="password"
										class="user_reg_input" name="confpassword" id="confpassword"
										onblur="validateConfpassword(this.value)" /></td>
									<td width="340" align="left"><span id="confpasswordMsg">*</span>
									</td>
								</tr>
								<tr>
									<td class="text_14_666">电子邮箱：</td>
									<td align="left"><input type="text" class="user_reg_input"
										name="user.email" id="user.email"
										onblur="validateEmail(this.value)" /></td>
									<td width="340" align="left"><span id="emailMsg">*</span>
									</td>
								</tr>
								<tr>
									<td align="left" colspan="3">
										<button type="submit" class="user_reg_button">
											<img
												src="${pageContext.request.contextPath}/images/user_reg_button01.gif"
												width="80" height="40" border="0" />
										</button> &nbsp;&nbsp;&nbsp;&nbsp;
										<button type="reset" class="user_reg_button">
											<img
												src="${pageContext.request.contextPath}/images/user_reg_button02.gif"
												width="80" height="40" border="0" />
										</button>
									</td>
								</tr>
							</table>
						</form>

					</div>
					<div class="user_reg_bottom_img">
						<img
							src="${pageContext.request.contextPath}/images/user_reg_tab_bottom.jpg"
							width="466" height="30" border="0" />
					</div>
				</div> <!--contnet end-->
			</td>
		</tr>
	</table>
</body>
</html>
