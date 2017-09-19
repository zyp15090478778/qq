<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>首页</title>
<script language="javascript" src="js/PNG_IMG.js" type="text/javascript"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td><!--logo and navigation start-->
      <table width="1000" border="0" cellspacing="0" cellpadding="0" class="top_nav_logo">
        <tr>
          <td  width="220" rowspan="2" align="center" valign="middle"><img src="images/logo.gif" width="193" height="70" border="0" /></td>
          <td class="top_user_info"><a href="UserIndex.htm" class="a_12_666" title="进入个人中心">个人中心</a> | <a href="#" class="a_12_666" title="退出登录">退出登录</a></td>
        </tr>
        <tr>
          <td><!--navigation start-->
            <table width="608" border="0" cellpadding="0" cellspacing="0" >
              <tr>
                <td width="120" align="center"><a href="index.htm" title="智囊团首页"><img src="images/nav_button01.gif" width="80" height="16" border="0" /></a></td>
                <td width="2" align="center"><img src="images/nav_line.gif" width="2" height="17" border="0" /></td>
                <td width="136" align="center"><a href="QuestionList.htm" title="最新解决问题"><img src="images/nav_button02.gif" width="96" height="16" border="0" /></a></td>
                <td width="2" align="center"><img src="images/nav_line.gif" width="2" height="17" border="0" /></td>
                <td width="104" align="center"><a href="frontQuestionAction_findAll.action" title="最新提问"><img src="images/nav_button03.gif" width="64" height="16" border="0" /></a></td>
                <td width="2" align="center"><img src="images/nav_line.gif" width="2" height="17" border="0" /></td>
                <td width="120" align="center"><a href="UserIndex.htm" title="进入用户中心"><img src="images/nav_button04.gif" width="80" height="16" border="0" /></a></td>
                <td width="2" align="center"><img src="images/nav_line.gif" width="2" height="17" border="0" /></td>
                <td width="120" align="center"><a href="jsp/front/user/user_register.jsp" title="用户注册"><img src="images/nav_button05.gif" width="80" height="16" border="0" /></a></td>
              </tr>
            </table>
            <!--navigation end--></td>
        </tr>
      </table>
      <!--logo and navigation end--></td>
  </tr>
  <tr>
    <td align="center" valign="middle" class="top_search"><!--top search start-->
      <form>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="480" align="right"><input class="top_search_input" type="text" /></td>
            <td width="120" align="right"><input type="image" src="images/top_search_button01.png" width="110" height="35" border="0" /></td>
            <td width="80" align="right"><a href="frontQuestionAction_question.action"><image src="images/top_search_button02.png" width="70" height="35" border="0" /></a></td>
            <td width="80" align="right"><input type="image" src="images/top_search_button03.png" width="70" height="35" border="0" /></td>
            <td width="240" valign="middle" align="center" class="top_search_info">已解决：10256个问题<br />
              待解决：2360个问题</td>
          </tr>
        </table>
      </form>
      <!--top search end--></td>
  </tr>
  <tr>
    <td class="container"><!--content start-->
      <table width="1000" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="160" valign="top"><!--left tab start-->
            <table width="160" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td class="index_left_tab_top" valign="middle">&nbsp;&nbsp;问题分类</td>
              </tr>
              <tr>
                <td align="center"><div  class="index_left_tab_content">
                    <!--loop dl tag start-->
                    <dl class="index_left_question_list">
                      <dt>Java开发</dt>
                      <dd>&middot;Java SE<br />
                        &middot;JSP Servlet<br />
                        &middot;Java EE<br />
                        &middot;开源框架<br />
                        &middot;Java ME </dd>
                    </dl>
                    <!--loop dl tag end-->
                  </div></td>
              </tr>
              <tr>
                <td><img src="images/index_question_list_tab_bottom.jpg" width="160" height="10" border="0" /></td>
              </tr>
            </table>
            <!--left tab end--></td>
          <td width="10"></td>
          <td width="520" valign="top"><!--center tab start-->
            <img src="images/index_content_img.jpg" width="520" height="240" border="0" class="index_center_content_img" />
            <!--推荐问题 start-->
            <table width="520" border="0" cellspacing="0" cellpadding="0" class="index_center_question_tab">
              <tr class="index_center_question_title">
                <td width="30" align="left" valign="middle"><img src="images/index_center_ico01.gif" width="25" height="25" border="0" /></td>
                <td width="420" align="left" class="text_14b_black">推荐问题</td>
                <td width="70" align="right" class="text_12_blue"><a href="QuestionList.htm" class="a_12_blue" title="进入问题列表">更多&gt;&gt;</a></td>
              </tr>
              <tr>
                <td colspan="3" ><!--loop ul tag start-->
                  <ul class="index_center_question_text">
                    <li class="question_title"><span>[<a href="QuestionList.htm" class="a_14_blue">Java SE</a>]</span>问题标题问题标题</li>
                    <li class="question_info">0 回答</li>
                    <div class="clear"></div>
                  </ul>
                  <!--loop ul tag end--></td>
              </tr>
            </table>
            <!--推荐问题 end-->
            <!--待解决问题 start-->
            <table width="520" border="0" cellspacing="0" cellpadding="0" class="index_center_question_tab">
              <tr class="index_center_question_title">
                <td width="30" align="left" valign="middle"><img src="images/index_center_ico02.gif" width="23" height="25" border="0" /></td>
                <td width="420" align="left" class="text_14b_black">待解决问题</td>
                <td width="70" align="right" class="text_12_blue"><a href="QuestionList.htm" class="a_12_blue" title="进入问题列表">更多&gt;&gt;</a></td>
              </tr>
              <tr>
                <td colspan="3" ><!--loop ul tag start-->
                  <ul class="index_center_question_text">
                    <li class="question_title"><span>[<a href="QuestionList.htm" class="a_14_blue">Java SE</a>]</span>问题标题问题标题</li>
                    <li class="question_info">0 回答</li>
                    <div class="clear"></div>
                  </ul>
                  <!--loop ul tag end--></td>
              </tr>
            </table>
            <!--待解决问题 end-->
            <!--最新解决问题 start-->
            <table width="520" border="0" cellspacing="0" cellpadding="0" class="index_center_question_tab">
              <tr class="index_center_question_title">
                <td width="30" align="left" valign="middle"><img src="images/index_center_ico03.gif" width="20" height="25" border="0" /></td>
                <td width="420" align="left" class="text_14b_black">最新解决问题</td>
                <td width="70" align="right" class="text_12_blue"><a href="QuestionList.htm" class="a_12_blue" title="进入问题列表">更多&gt;&gt;</a></td>
              </tr>
              <tr>
                <td colspan="3" ><!--loop ul tag start-->
                  <ul class="index_center_question_text">
                    <li class="question_title"><span>[<a href="QuestionList.htm" class="a_14_blue">Java SE</a>]</span>问题标题问题标题</li>
                    <li class="question_info">0 回答</li>
                    <div class="clear"></div>
                  </ul>
                  <!--loop ul tag end--></td>
              </tr>
            </table>
            <!--最新解决问题 end-->
            <!--center tab end--></td>
          <td width="10"></td>
          <td width="300" valign="top"><!--right tab start-->
            <!--公告 start-->
            <table width="300" border="0" cellspacing="0" cellpadding="0" class="right_notice">
              <tr>
                <td class="right_notice_title">&nbsp;&nbsp;公告</td>
              </tr>
              <tr>
                <td><div class="right_notice_content"> &middot; 公告标题公告标题<span>[2011-01-12]</span><br />
                    &middot; <a href="NoticeContent.htm" class="a_12_666" title="公告内容页">公告标题公告标题</a><span>[2011-01-12]</span><br />
                    &middot; <a href="NoticeContent.htm" class="a_12_666" title="公告内容页">公告标题公告标题</a><span>[2011-01-12]</span><br />
                    &middot; <a href="NoticeContent.htm" class="a_12_666" title="公告内容页">公告标题公告标题</a><span>[2011-01-12]</span><br />
                    &middot; <a href="NoticeContent.htm" class="a_12_666" title="公告内容页">公告标题公告标题</a><span>[2011-01-12]</span><br />
                    &middot; <a href="NoticeContent.htm" class="a_12_666" title="公告内容页">公告标题公告标题</a><span>[2011-01-12]</span><br />
                  </div></td>
              </tr>
              <tr>
                <td><img src="images/index_right_notice_tab_bottom.jpg" width="300" height="10" border="0" /></td>
              </tr>
            </table>
            <!--公告 end-->
            <!--智囊团专家 and 用户排行榜 Start-->
            <table width="300" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/index_right_tab_top.gif" width="300" height="10" border="0" /></td>
              </tr>
              <tr>
                <td><div class="index_right_tab_content">
                <!--智囊团专家 start-->
                    <table width="288" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td class="right_experts_title" colspan="2">智囊团专家</td>
                      </tr>
                      <tr>
                      <td height="5" colspan="2"></td>
                      </tr>
                      <tr>
                        <td width="140" align="left" valign="top"><img src="images/index_right_mldn_logo.jpg" width="130" height="100" border="0" /></td>
                        <td  width="148" align="left" valign="top" class="right_experts_content"><span class="text_14b_black"></span><br />
                         
                          中科软通系统架构师<br />
                          火车票网技术总监<br />
                          …… </td>
                      </tr>
                      <tr>
                        <td colspan="2" class="right_experts_text">    丰富的JAVA/JAVAEE设计和开发经验以及多年培训经验。2008年出版《从零开始学JAVA》系列教程，授讲课程深入浅出、通俗易懂、语言精练、深受广大学员欢迎。2009年出版《JAVA开发实战经典》和《跟我学JAVA26日通》蝉联个大书店JAVA类图书销售榜首。</td>
                      </tr>
                    </table>
                    <!--智囊团专家 end-->
                    <!--用户排行 start-->
                    <table width="288" border="0" cellspacing="0" cellpadding="0" class="index_right_user_list">
  <tr>
    <td colspan="3" class="index_right_user_title">用户排行</td>
  </tr>
  <!--loop tr tag start-->
  <tr>
    <td width="20" align="left" valign="middle"><img src="images/index_right_num_ico01.gif" width="15" height="15" border="0" /></td>
    <td align="left" width="188" class="text_14_black">UserName</td>
    <td align="right" width="80" class="text_12_666">2115分</td>
  </tr>
  <!--loop tr tag end-->
    <tr>
    <td width="20" align="left" valign="middle"><img src="images/index_right_num_ico02.gif" width="15" height="15" border="0" /></td>
    <td align="left" width="188" class="text_14_black">UserName</td>
    <td align="right" width="80" class="text_12_666">2115分</td>
  </tr>
    <tr>
    <td width="20" align="left" valign="middle"><img src="images/index_right_num_ico03.gif" width="15" height="15" border="0" /></td>
    <td align="left" width="188" class="text_14_black">UserName</td>
    <td align="right" width="80" class="text_12_666">2115分</td>
  </tr>
    <tr>
    <td width="20" align="left" valign="middle"><img src="images/index_right_num_ico04.gif" width="15" height="15" border="0" /></td>
    <td align="left" width="188" class="text_14_black">UserName</td>
    <td align="right" width="80" class="text_12_666">2115分</td>
  </tr>
    <tr>
    <td width="20" align="left" valign="middle"><img src="images/index_right_num_ico05.gif" width="15" height="15" border="0" /></td>
    <td align="left" width="188" class="text_14_black">UserName</td>
    <td align="right" width="80" class="text_12_666">2115分</td>
  </tr>
</table>

                    <!--用户排行 end-->
                  </div></td>
              </tr>
              <tr>
                <td><img src="images/index_right_tab_bottom.gif" width="300" height="10" border="0" /></td>
              </tr>
            </table>
            <!--排行榜 end-->
            <!--right tab end--></td>
        </tr>
      </table>
      <!--contnet end--></td>
  </tr>
  
</table>
</body>
</html>
