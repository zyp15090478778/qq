package com.zhiyou.ssh.action.front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.zhiyou.ssh.service.front.IFrontUserService;
import com.zhiyou.ssh.util.MD5Code;
import com.zhiyou.ssh.vo.User;

@SuppressWarnings("serial")
@Controller
public class UserAction extends ActionSupport {

	private IFrontUserService frontUserService = null;
	// 接收用户发过来的参数
	private User user = new User();

	private String code;// 验证码

	private String userId;


	public String login() throws Exception {
		user.setPassword(new MD5Code().getMD5ofStr(user.getPassword()));
		System.out.println(user.getPassword());
		if (frontUserService.login(user)) {
			// 使用session保留用户登录ID
			ServletActionContext.getRequest().getSession().setAttribute("userid", user.getUserid());
			ServletActionContext.getRequest().setAttribute("msg", "Hey baby!Welcome back!" + user.getUserid());
			ServletActionContext.getRequest().setAttribute("path",
					ServletActionContext.getRequest().getContextPath() + "/index.jsp");

		} else {// 登录失败
			ServletActionContext.getRequest().setAttribute("msg", "错了错了");
			// 跳转回到登录页面
			// ServletActionContext.getRequest().setAttribute("path",
			// ServletActionContext.getRequest().getContextPath() + "/login.jsp");
			return "input";
		}
		return "forward";
	}

	public String validateCode() throws IOException {
		String rand = (String) ServletActionContext.getRequest().getSession().getAttribute("rand");
		System.out.println(rand);
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		if (rand.equalsIgnoreCase(this.code)) { // 验证码获取正确
			out.print("true");
		} else {
			out.print("false");
		}
		out.close();
		return null;
	}

	public String register() throws Exception {

		user.setPassword(new MD5Code().getMD5ofStr(user.getPassword()));
		user.setPoints(100);
		boolean flag = frontUserService.doCreate(user);
		if (flag) {
			ServletActionContext.getRequest().setAttribute("path",
					ServletActionContext.getRequest().getContextPath() + "/index.jsp");
		}
		return "forward";

	}

	public String userId() throws IOException {

		System.out.println(userId);
		boolean callbackResult = frontUserService.getUserid(userId);
		System.out.println(callbackResult);
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		out.print(callbackResult);
		out.close();
	
		return null;
	}

	// 使用set方法注入service
	@Resource(name = "frontUserServiceImpl")
	public void setFrontUserService(IFrontUserService frontUserService) {
		this.frontUserService = frontUserService;
	}

	public User getUser() {
		return user;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setCode(String code) {
		this.code = code;
	}

}
