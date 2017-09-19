<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>智囊团-提问</title>
<script src="${pageContext.request.contextPath}/js/PNG_IMG.js"
	type="text/javascript"></script>
<script src="../../../js/question_write.js"
	type="text/javascript"></script>
<script type="text/javascript">
	var path = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/js/tag.js"
	type="text/javascript"></script>
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
										src="images/nav_line.gif" width="2" height="17" border="0" />
									</td>
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
				<table width="1000" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="690" valign="top">


							<div class="page_content_body_link">
								<a href="index.htm" class="a_14_666" title="智囊团首页">首页</a>-&gt; <a
									href="QuestionList.htm" class="a_14_666" title="问题列表页">Java
									SE</a>
							</div>
							<div class="question_write">
								<div class="table">
									<form action="frontQuestionAction_insert.action" method="post"
										onsubmit="return validate()">
										<table width="670" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td colspan="2" align="left" class="text_14b_333">
													填写问题内容</td>
											</tr>
											<tr>
												<td width="100" align="right" class="text_14_666"
													valign="top">问题标题：</td>
												<td width="670" align="left" valign="top"><input
													type="text" class="question_write_input"
													id="question.title" name="question.title"
													onblur="validateTitle(this.value)" /> <span id="titleMsg"></span>
												</td>
											</tr>
											<tr>
												<td width="100" align="right" class="text_14_666"
													valign="top">奖赏分数：</td>
												<td width="670" align="left" valign="top"><input
													type="text" class="question_write_ponit"
													id="question.points" name="question.points"
													onblur="validatePoints(this.value,'${userid}')" /> <span
													id="pointsMsg"></span></td>
											</tr>
											<tr>
												<td width="100" align="right" class="text_14_666"
													valign="top">问题类型：</td>
												<td width="670" align="left" valign="top"><s:if
														test="#request.allType!=null">
														<select name="question.type.tid">
															<s:iterator value="#request.allType">
																<option value="${tid}">
																		${title}
																	</option>
															</s:iterator>
														</select>
													</s:if></td>
											</tr>
											<tr>
												<td width="100" align="right" class="text_14_666"
													valign="top">问题内容：</td>
												<td width="670" align="left" valign="top"><textarea
														class="qusetion_write_content" id="question.content"
														name="question.content"
														onblur="validateContent(this.value)"></textarea> <br>
												<span id="contentMsg"></span></td>
											</tr>
											<tr>
												<td width="100" align="right" class="text_14_666"
													valign="top">验&nbsp;证&nbsp;码：</td>
												<td width="670" align="left" valign="top"><input
													type="text" class="question_write_ponit" name="code"
													id="code" maxlength="4" size="4"
													onblur="validateCode(this.value)" /> <img
													src="${pageContext.request.contextPath}/image.jsp"
													onclick="this.src='${pageContext.request.contextPath}/image.jsp?d='+Math.random();">
													<span id="codeMsg"></span></td>
											</tr>
											<tr>
												<td width="100" align="right" class="text_14_666"
													valign="top">&nbsp;</td>
												<td width="670" align="left" valign="top"><input
													type="hidden" name="question.user.userid"
													id="question.user.userid" value="${userid}"> <input
													type="image"
													src="${pageContext.request.contextPath}/images/question_write_button.gif"
													width="110" height="40" border="0" /></td>
											</tr>
										</table>
									</form>
								</div>
								<div class="bottom_img">
									<img
										src="${pageContext.request.contextPath}/images/question_content_tab01_bottom.gif"
										width="690" height="5" border="0" />
								</div>
							</div>


						</td>
						<td width="10"></td>
						<td width="300" valign="top">

							<table width="300" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/images/index_right_tab_top.gif"
										width="300" height="10" border="0" /></td>
								</tr>
								<tr>
									<td>
										<div class="index_right_tab_content">
											<!--智囊团专家 start-->
											<table width="288" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td class="right_experts_title" colspan="2">智囊团专家</td>
												</tr>
												<tr>
													<td height="5" colspan="2"></td>
												</tr>
												<tr>
													<td width="140" align="left" valign="top"><img
														src="${pageContext.request.contextPath}/images/index_right_zhiyou_logo.png"
														width="130" height="100" border="0" /></td>
													<td width="148" align="left" valign="top"
														class="right_experts_content"><span
														class="text_14b_black">***</span> <br /> 北京**科技教学总监 <br />
														****系统架构师 <br /> 火车票网技术总监 <br /> ……</td>
												</tr>
												<tr>
													<td colspan="2" class="right_experts_text">
														丰富的JAVA/JAVAEE设计和开发经验以及多年培训经验。2008年出版《从零开始学JAVA》系列教程，授讲课程深入浅出、通俗易懂、语言精练、深受广大学员欢迎。2009年出版《JAVA开发实战经典》和《跟我学JAVA26日通》蝉联个大书店JAVA类图书销售榜首。
													</td>
												</tr>
											</table>
											<!--智囊团专家 end-->
											<!--用户排行 start-->
											<table width="288" border="0" cellspacing="0" cellpadding="0"
												class="index_right_user_list">
												<tr>
													<td colspan="3" class="index_right_user_title">用户排行</td>
												</tr>
												<!--loop tr tag start-->
												<tr>
													<td width="20" align="left" valign="middle"><img
														src="${pageContext.request.contextPath}/images/index_right_num_ico01.gif"
														width="15" height="15" border="0" /></td>
													<td align="left" width="188" class="text_14_black">
														UserName</td>
													<td align="right" width="80" class="text_12_666">
														2115分</td>
												</tr>
												<!--loop tr tag end-->
												<tr>
													<td width="20" align="left" valign="middle"><img
														src="${pageContext.request.contextPath}/images/index_right_num_ico02.gif"
														width="15" height="15" border="0" /></td>
													<td align="left" width="188" class="text_14_black">
														UserName</td>
													<td align="right" width="80" class="text_12_666">
														2115分</td>
												</tr>
												<tr>
													<td width="20" align="left" valign="middle"><img
														src="${pageContext.request.contextPath}/images/index_right_num_ico03.gif"
														width="15" height="15" border="0" /></td>
													<td align="left" width="188" class="text_14_black">
														UserName</td>
													<td align="right" width="80" class="text_12_666">
														2115分</td>
												</tr>
												<tr>
													<td width="20" align="left" valign="middle"><img
														src="${pageContext.request.contextPath}/images/index_right_num_ico04.gif"
														width="15" height="15" border="0" /></td>
													<td align="left" width="188" class="text_14_black">
														UserName</td>
													<td align="right" width="80" class="text_12_666">
														2115分</td>
												</tr>
												<tr>
													<td width="20" align="left" valign="middle"><img
														src="${pageContext.request.contextPath}/images/index_right_num_ico05.gif"
														width="15" height="15" border="0" /></td>
													<td align="left" width="188" class="text_14_black">
														UserName</td>
													<td align="right" width="80" class="text_12_666">
														2115分</td>
												</tr>
											</table>

											<!--用户排行 end-->
										</div>
									</td>
								</tr>
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/images/index_right_tab_bottom.gif"
										width="300" height="10" border="0" /></td>
								</tr>
							</table>
						</td>
					</tr>
				</table> <!--contnet end-->
			</td>
		</tr>

	</table>
</body>
<script type="text/javascript">

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
	xmlHttp.open("POST", "frontQuestionAction_validateCode.action?code=" + code);
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
function validateTitle(title) {
	if(title != "") {
		document.getElementById("titleMsg").innerHTML = "<img src=\""
			+ "/images/right.gif\">"
			+ "<font color=\"green\">问题标题输入正确！</font>" ;
		return true ;
	} else {
		document.getElementById("titleMsg").innerHTML = "<img src=\""
			+ "/images/wrong.gif\">"
			+ "<font color=\"red\">问题标题不能为空！</font>" ;
		return false ;
	}
}

function validatePoints(points,userid){
	createXMLHttp() ;
	xmlHttp.open("POST", "frontQuestionAction_validatePoints.action?points="+ points +"&userid="+ userid);
	xmlHttp.onreadystatechange = validatePointCallback;	// 定义回调函数的使用
	xmlHttp.send(null);
}

function validatePointCallback() {	// 定义回调函数
	if (xmlHttp.readyState == 4) {	// 数据返回完毕
		if (xmlHttp.status == 200) {	// HTTP操作正常
			callbackResult = xmlHttp.responseText ;	// 接收返回的内容
			if(callbackResult == "true") {
				document.getElementById("pointsMsg").innerHTML = "<img src=\""
						+ "/images/right.gif\">"
						+ "<font color=\"green\">悬赏分数有效！</font>" ;
				flag = true ;
			} else {
				document.getElementById("pointsMsg").innerHTML = "<img src=\""
					+ "/images/wrong.gif\">"
					+ "<font color=\"red\">悬赏分数无效！</font>" ;
				flag = false ;
			}
		}
	}
}

function validateForm() {
	return 	validateTitle(document.getElementById("question.title").value) &&
			flag ;
}


</script>
</html>
