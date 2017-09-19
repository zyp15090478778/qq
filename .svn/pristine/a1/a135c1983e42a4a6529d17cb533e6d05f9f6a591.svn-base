package com.zhiyou.ssh.action.back;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.zhiyou.ssh.service.back.IFrontAdminService;
import com.zhiyou.ssh.util.MD5Code;
import com.zhiyou.ssh.vo.Admin;

@SuppressWarnings("serial")
@Controller
public class AdminAction extends ActionSupport {

	private IFrontAdminService frontAdminServiceImpl = null;

	@Resource(name = "frontAdminServiceImpl")

	public void setFrontAdminServiceImpl(IFrontAdminService frontAdminServiceImpl) {
		this.frontAdminServiceImpl = frontAdminServiceImpl;
	}

	private Admin admin = new Admin();

	private String code;

	public String login() throws Exception {

		admin.setPassword(new MD5Code().getMD5ofStr(admin.getPassword()));
		
		boolean flag = frontAdminServiceImpl.login(admin);
		System.out.println(flag);
		if (flag) {
			ServletActionContext.getRequest().getSession().setAttribute("id", admin.getAdminid());
			ServletActionContext.getRequest().setAttribute("msg", "管理员登录成功");
			ServletActionContext.getRequest().setAttribute("path",
					ServletActionContext.getRequest().getContextPath() + "/jsp/back/index.jsp");
		}else {
			ServletActionContext.getRequest().setAttribute("msg", "管理员登录失败");
			ServletActionContext.getRequest().setAttribute("path",
					ServletActionContext.getRequest().getContextPath() + "/jsp/back/login.jsp");
		}

		return "forward";
	}

	public String validateCode() throws IOException {

		String rand = (String) ServletActionContext.getRequest().getSession().getAttribute("rand");
		System.out.println(code);
		PrintWriter put = ServletActionContext.getResponse().getWriter();
		if (rand.equalsIgnoreCase(this.code)) {
			put.print(true);
		}

		return null;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Admin getAdmin() {
		return admin;
	}

}
