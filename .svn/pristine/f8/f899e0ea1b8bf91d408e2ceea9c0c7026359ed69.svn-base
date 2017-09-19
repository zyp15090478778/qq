<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>用户登录</title>
		
		<script type="text/javascript" src="js/user_login.js" ></script>
		<script type="text/javascript" src="js/PNG_IMG.js" ></script>
		<script type="text/javascript" src="js/tag.js" ></script>
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
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
							<td width="220" rowspan="2" align="center" valign="middle">
								<img src="${pageContext.request.contextPath}/images/logo.gif" width="193" height="70" border="0" />
							</td>
							<td class="top_user_info"><a href="jsp/back/login.jsp" class="a_12_666" title="进入个人中心">管理员登录</a>
							</td>
						</tr>
						<tr>
							<td>
								<!--navigation start-->
								<table width="608" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="120" align="center">
											<a href="index.htm" title="智囊团首页"><img
													src="${pageContext.request.contextPath}/images/nav_button01.gif" width="80" height="16"
													border="0" /> </a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17"
												border="0" />
										</td>
										<td width="136" align="center">
											<a href="QuestionList.htm" title="最新解决问题"><img
													src="${pageContext.request.contextPath}/images/nav_button02.gif" width="96" height="16"
													border="0" /> </a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17"
												border="0" />
										</td>
										<td width="104" align="center">
											<a href="#" title="最新提问"><img
													src="${pageContext.request.contextPath}/images/nav_button03.gif" width="64" height="16"
													border="0" /> </a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17"
												border="0" />
										</td>
										<td width="120" align="center">
											<a href="#" title="进入用户中心"><img
													src="${pageContext.request.contextPath}/images/nav_button04.gif" width="80" height="16"
													border="0" /> </a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17"
												border="0" />
										</td>
										<td width="120" align="center">
											<a href="#" title="用户注册"><img
													src="${pageContext.request.contextPath}/images/nav_button05.gif" width="80" height="16"
													border="0" /> </a>
										</td>
									</tr>
								</table>
								<!--navigation end-->
							</td>
						</tr>
					</table>
					<!--logo and navigation end-->
				</td>
			</tr>
			<tr>
				<td align="center" valign="middle" class="top_search">
					<!--top search start-->
					<form>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="480" align="right">
									<input class="top_search_input" type="text" />
								</td>
								<td width="120" align="right">
									<input type="image" src="${pageContext.request.contextPath}/images/top_search_button01.png"
										width="110" height="35" border="0" />
								</td>
								<td width="80" align="right">
									<input type="image" src="${pageContext.request.contextPath}/images/top_search_button02.png"
										width="70" height="35" border="0" />
								</td>
								<td width="80" align="right">
									<input type="image" src="${pageContext.request.contextPath}/images/top_search_button03.png"
										width="70" height="35" border="0" />
								</td>
								<td width="240" valign="middle" align="center"
									class="top_search_info">
									已解决：10256个问题
									<br />
									待解决：2360个问题
								</td>
							</tr>
						</table>
					</form>
					<!--top search end-->
				</td>
			</tr>
			<tr>
				<td class="container">
					<!--content start-->

					<table width="468" border="0" cellspacing="0" cellpadding="0"
						class="login_tab">
						<tr>
							<td height="40" align="left" valign="middle" class="login_title">
								&nbsp;&nbsp;用户登录
							</td>
						</tr>
						<tr>
							<td>
								<form action="frontUserAction_login.action" method="post" onsubmit="return validateForm()">
								<table width="408" border="0" cellspacing="0" cellpadding="0"
									class="login_content_tab">
										<tr>
											<td width="78" align="right" class="text_14_666">
												用户名：
											</td>
											<td width="130">
												<input type="text" class="login_input" name="user.userid" id="user.userid" onblur="validateUserid(this.value)"/>
											</td>
											<td width="200">
												<span id="useridMsg">*</span>
											</td>
										</tr>
										<tr>
											<td align="right" class="text_14_666">
												密 &nbsp;码：
											</td>
											<td>
												<input type="password" class="login_input" name="user.password" id="user.password" onblur="validatePassword(this.value)"/>
											</td>
											<td width="200">
												<span id="passwordMsg">*</span>
											</td>
										</tr>
										<tr>
											<td align="right" class="text_14_666">
												验证码：
											</td>
											<td>
												<input type="text" class="login_code" name="code" id="code" maxlength="4" size="4" onblur="validateCode(this.value)"/>
												<img src="${pageContext.request.contextPath}/image.jsp"onclick="this.src='${pageContext.request.contextPath}/image.jsp?d='+Math.random();">
											</td>
											<td width="200">
												<span id="codeMsg">*</span>
											</td>
										</tr>
										<tr>
											<td align="right"></td>
											<td align="left">
												<input type="image" src="${pageContext.request.contextPath}/images/user_login_button.gif"
													width="80" height="40" border="0" />
											</td>
										</tr>
								</table>
								</form>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
					</table>

					<!--contnet end-->
				</td>
			</tr>
			
		</table>
	</body>
</html>
