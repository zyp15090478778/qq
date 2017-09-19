<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>智囊团-问题列表</title>
		<script language="javascript"
			src="${pageContext.request.contextPath}/js/PNG_IMG.js"
			type="text/javascript"></script>
		<script language="javascript"
			src="${pageContext.request.contextPath}/js/tag.js"
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
							<td width="220" rowspan="2" align="center" valign="middle">
								<img src="${pageContext.request.contextPath}/images/logo.gif" width="193" height="70" border="0" />
							</td>
							<td class="top_user_info">
								<a href="UserIndex.htm" class="a_12_666" title="进入个人中心">个人中心</a>
								<a href="#" class="a_12_666" title="退出登录">退出登录</a>
							</td>
						</tr>
						<tr>
							<td>
								<!--navigation start-->
								<table width="608" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td width="120" align="center">
											<a href="index.htm" title="智囊团首页">
											<img src="${pageContext.request.contextPath}/images/nav_button01.gif" width="80" height="16" border="0" />
											</a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17" border="0" />
										</td>
										<td width="136" align="center">
											<a href="QuestionList.htm" title="最新解决问题">
											<img src="${pageContext.request.contextPath}/images/nav_button02.gif" width="96" height="16" border="0" />
											</a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17" border="0" />
										</td>
										<td width="104" align="center">
											<a href="${pageContext.request.contextPath}/jsp/front/frontQuestionAction_listAll.action" title="最新提问">
											<img src="${pageContext.request.contextPath}/images/nav_button03.gif" width="64" height="16" border="0" />
											</a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17" border="0" />
										</td>
										<td width="120" align="center">
											<a href="UserIndex.htm" title="进入用户中心">
											<img src="${pageContext.request.contextPath}/images/nav_button04.gif" width="80" height="16" border="0" />
											</a>
										</td>
										<td width="2" align="center">
											<img src="${pageContext.request.contextPath}/images/nav_line.gif" width="2" height="17" border="0" />
										</td>
										<td width="120" align="center">
											<a href="UserReg.htm" title="用户注册">
											<img src="${pageContext.request.contextPath}/images/nav_button05.gif" width="80" height="16" border="0" />
											</a>
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
					<form action="${pageContext.request.contextPath}/frontQuestionAction_question.action"
			method="post">
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
					<table width="1000" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="690" valign="top">
								<div class="page_content_body_link">
									<a href="index.htm" class="a_14_666" title="智囊团首页">首页</a>-&gt;
									<a href="QuestionList.htm" class="a_14_666" title="问题列表页">Java
										SE</a>
								</div>
								<!--顶部问题分类 start-->
								<table width="690" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td class="question_list_left_top_tab_title" height="31"
											valign="middle">
											&nbsp;&nbsp;Java SE
										</td>
									</tr>
									<tr>
										<td>
											<div class="qusetion_list_left_top_tab_content">
												<ul>
													<!--loop li tag start-->
													<s:iterator value="#request.allType">
														<li>&middot;${title}</li>
													</s:iterator>
													<!--loop li tag end-->
													<li><div class="clear"></div></li>
												</ul>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<img src="${pageContext.request.contextPath}/images/question_list_left_tab_bottom.jpg"
												width="690" height="10" border="0" />
										</td>
									</tr>
								</table>
								<!--顶问题分类 end-->
								<!--问题标签start-->
								<table width="690" border="0" cellspacing="0" cellpadding="0"
									class="question_list_tag">
									<tr>
										<td class="e101" valign="middle" id="el01"
											onMouseOver=esecBoard(1);;>
											待解决问题
										</td>
										<td width="2"></td>
										<td class="e102" id="el02" valign="middle"
											onMouseOver=esecBoard(2);;>
											已解决
										</td>
										<td width="2"></td>
										<td class="e102" id="el03" valign="middle"
											onMouseOver=esecBoard(3);;>
											零回答
										</td>
										<td width="2"></td>
										<td class="e102" id="el04" valign="middle"
											onMouseOver=esecBoard(4);;>
											高悬赏
										</td>
										<td width="204"></td>
									</tr>
								</table>
								<!--问题标签 end-->

								<!--待解决问题表格 start-->
								<table width="690" border="0" cellspacing="0" cellpadding="0"
									id="ebx01" class="question_list_content_tab">
									<!--循环tr标记 start-->
									<s:iterator value="#request.allQuestionStatus1"> 
									<tr>
										<td align="left" class="text_14_666">
											<a href="QuestionList.htm" class="a_14_blue" title="查看该类问题">[${currentType.title}]</a>&nbsp;${title}
											<span>[${status==0?"已解决":"未解决"}]</span>
										</td>
										<td align="right" class="text_14_999">
											${count == null?0:count} 回答
										</td>
									</tr>
									</s:iterator>
									<!--循环tr标记 end-->
									<tr>
										<td colspan="2" style="border: none;">
											<!--翻页 Start-->
											<div class="manu">
												<span class="disabled"> &lt; Prev</span><span
													class="current">1</span><a href="#?page=2">2</a><a
													href="#?page=3">3</a><a href="#?page=4">4</a><a
													href="#?page=5">5</a><a href="#?page=6">6</a><a
													href="#?page=7">7</a>...
												<a href="#?page=199">199</a><a href="#?page=200">200</a><a
													href="#?page=2">Next &gt; </a>
											</div>
											<!--翻页 end-->
										</td>
									</tr>
								</table>
								<!--待解决问题表格 end-->

								<!--已解决问题表格 start-->
								<table width="690" border="0" cellspacing="0" cellpadding="0"
									id="ebx02" style="display: none;"
									class="question_list_content_tab">
									<!--循环tr标记 start-->
									<s:iterator value="#request.allQuestionStatus0">
									<tr>
										<td align="left" class="text_14_666">
											<a href="QuestionList.htm" class="a_14_blue" title="查看该类问题">[${currentType.title}]</a>&nbsp;${title}
											<span>[${status==0?"已解决":"未解决"}]</span>
										</td>
										<td align="right" class="text_14_999">
											${count == null?0:count} 回答
										</td>
									</tr>
									</s:iterator>
									<!--循环tr标记 end-->
									<tr>
										<td colspan="2" style="border: none;">
											<!--翻页 Start-->
											<div class="manu">
												<span class="disabled"> &lt; Prev</span><span
													class="current">1</span><a href="#?page=2">2</a><a
													href="#?page=3">3</a><a href="#?page=4">4</a><a
													href="#?page=5">5</a><a href="#?page=6">6</a><a
													href="#?page=7">7</a>...
												<a href="#?page=199">199</a><a href="#?page=200">200</a><a
													href="#?page=2">Next &gt; </a>
											</div>
											<!--翻页 end-->
										</td>
									</tr>
								</table>
								<!--已解决问题表格 end-->

								<!--零回答表格 start-->
								<table width="690" border="0" cellspacing="0" cellpadding="0"
									id="ebx03" style="display: none;"
									class="question_list_content_tab">
									<!--循环tr标记 start-->
									<s:iterator value="#request.allQuestionCountZero">
									<tr>
										<td align="left" class="text_14_666">
											<a href="QuestionList.htm" class="a_14_blue" title="查看该类问题">[${currentType.title}]</a>&nbsp;${title}
											<span>[${status==0?"已解决":"未解决"}]</span>
										</td>
										<td align="right" class="text_14_999">
											${count == null?0:count} 回答
										</td>
									</tr>
									</s:iterator>
									<!--循环tr标记 end-->
									<tr>
										<td colspan="2" style="border: none;">
											<!--翻页 Start-->
											<div class="manu">
												<span class="disabled"> &lt; Prev</span><span
													class="current">1</span><a href="#?page=2">2</a><a
													href="#?page=3">3</a><a href="#?page=4">4</a><a
													href="#?page=5">5</a><a href="#?page=6">6</a><a
													href="#?page=7">7</a>...
												<a href="#?page=199">199</a><a href="#?page=200">200</a><a
													href="#?page=2">Next &gt; </a>
											</div>
											<!--翻页 end-->
										</td>
									</tr>
								</table>
								<!--零回答表格 end-->

								<!--高悬赏表格 start-->
								<table width="690" border="0" cellspacing="0" cellpadding="0"
									id="ebx04" style="display: none;"
									class="question_list_content_tab">
									<!--循环tr标记 start-->
									<s:iterator value="#request.allQuestionPoints">
									<tr>
										<td align="left" class="text_14_666">
											<a href="QuestionList.htm" class="a_14_blue" title="查看该类问题">[${currentType.title}]</a>&nbsp;${title}
											<span>[${status==0?"已解决":"未解决"}]</span>
										</td>
										<td align="right" class="text_14_999">
											${count == null?0:count} 回答
										</td>
									</tr>
									</s:iterator>
									<!--循环tr标记 end-->
									<tr>
										<td colspan="2" style="border: none;">
											<!--翻页 Start-->
											<div class="manu">
												<span class="disabled"> &lt; Prev</span><span
													class="current">1</span><a href="#?page=2">2</a><a
													href="#?page=3">3</a><a href="#?page=4">4</a><a
													href="#?page=5">5</a><a href="#?page=6">6</a><a
													href="#?page=7">7</a>...
												<a href="#?page=199">199</a><a href="#?page=200">200</a><a
													href="#?page=2">Next &gt; </a>
											</div>
											<!--翻页 end-->
										</td>
									</tr>
								</table>
								<!--高悬赏表格 end-->


							</td>
							<td width="10"></td>
							<td width="300" valign="top">

								<table width="300" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<img src="images/index_right_tab_top.gif" width="300"
												height="10" border="0" />
										</td>
									</tr>
									<tr>
										<td>
											<div class="index_right_tab_content">
												<!--智囊团专家 start-->
												<table width="288" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td class="right_experts_title" colspan="2">
															智囊团专家
														</td>
													</tr>
													<tr>
														<td height="5" colspan="2"></td>
													</tr>
													<tr>
														<td width="140" align="left" valign="top">
															<img src="${pageContext.request.contextPath}/images/index_right_mldn_logo.jpg" width="130"
																height="100" border="0" />
														</td>
														<td width="148" align="left" valign="top"
															class="right_experts_content"> 
															<span class="text_14b_black">***</span>
															<br />
															北京**科技教学总监
															<br />
															****系统架构师
															<br />
															***网技术总监
															<br />
															……
														</td>
													</tr>
													<tr>
														<td colspan="2" class="right_experts_text">
															丰富的JAVA/JAVAEE设计和开发经验以及多年培训经验。****年出版《*****JAVA》系列教程，授讲课程深入浅出、通俗易懂、语言精练、深受广大学员欢迎。****年出版《JAVA******》和《***JAVA****》蝉联个大书店JAVA类图书销售榜首。
														</td>
													</tr>
												</table>
												<!--智囊团专家 end-->
												<!--用户排行 start-->
												<table width="288" border="0" cellspacing="0"
													cellpadding="0" class="index_right_user_list">
													<tr>
														<td colspan="3" class="index_right_user_title">
															用户排行
														</td>
													</tr>
													<!--loop tr tag start-->
													<tr>
														<td width="20" align="left" valign="middle">
															<img src="${pageContext.request.contextPath}/images/index_right_num_ico01.gif" width="15"
																height="15" border="0" />
														</td>
														<td align="left" width="188" class="text_14_black">
															UserName
														</td>
														<td align="right" width="80" class="text_12_666">
															2115分
														</td>
													</tr>
													<!--loop tr tag end-->
													<tr>
														<td width="20" align="left" valign="middle">
															<img src="${pageContext.request.contextPath}/images/index_right_num_ico02.gif" width="15"
																height="15" border="0" />
														</td>
														<td align="left" width="188" class="text_14_black">
															UserName
														</td>
														<td align="right" width="80" class="text_12_666">
															2115分
														</td>
													</tr>
													<tr>
														<td width="20" align="left" valign="middle">
															<img src="${pageContext.request.contextPath}/images/index_right_num_ico03.gif" width="15"
																height="15" border="0" />
														</td>
														<td align="left" width="188" class="text_14_black">
															UserName
														</td>
														<td align="right" width="80" class="text_12_666">
															2115分
														</td>
													</tr>
													<tr>
														<td width="20" align="left" valign="middle">
															<img src="${pageContext.request.contextPath}/images/index_right_num_ico04.gif" width="15"
																height="15" border="0" />
														</td>
														<td align="left" width="188" class="text_14_black">
															UserName
														</td>
														<td align="right" width="80" class="text_12_666">
															2115分
														</td>
													</tr>
													<tr>
														<td width="20" align="left" valign="middle">
															<img src="${pageContext.request.contextPath}/images/index_right_num_ico05.gif" width="15"
																height="15" border="0" />
														</td>
														<td align="left" width="188" class="text_14_black">
															UserName
														</td>
														<td align="right" width="80" class="text_12_666">
															2115分
														</td>
													</tr>
												</table>

												<!--用户排行 end-->
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<img src="${pageContext.request.contextPath}/images/index_right_tab_bottom.gif" width="300"
												height="10" border="0" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

					<!--contnet end-->
				</td>
			</tr>

		</table>
	</body>
</html>
