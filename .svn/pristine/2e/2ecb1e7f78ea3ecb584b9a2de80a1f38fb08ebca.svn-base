package com.zhiyou.ssh.action.front;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.zhiyou.ssh.service.front.IFrontQuestionService;
import com.zhiyou.ssh.service.front.IFrontUserService;
import com.zhiyou.ssh.vo.Question;
import com.zhiyou.ssh.vo.Type;
import com.zhiyou.ssh.vo.User;

@SuppressWarnings("serial")
@Controller
public class QuestionAction extends ActionSupport {

	@Autowired
	private IFrontQuestionService frontQuestionService;
	@Autowired
	private IFrontUserService frontUserService;

	private Question question = new Question();

	private String userid;
	private Integer points;

	public void setPoints(Integer points) {
		this.points = points;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	private String code;

	public void setCode(String code) {
		this.code = code;
	}

	public Question getQuestion() {
		return question;
	}

	public String question() throws Exception {

		List<Type> types = frontQuestionService.findAllTypes();
		ServletActionContext.getRequest().setAttribute("allType", types);

		return SUCCESS;

	}

	public String insert() {
		// question.getUser().setUserid("qwe");
		// question.getAnswer().setAid(12);
		question.setPubtime(new Date());
		question.setStatus(1);
		question.setCount(0);
		boolean flag;
		try {
			flag = frontQuestionService.doCreate(question);
			System.out.println(flag);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return INPUT;

	}

	public String validateCode() throws IOException {
		String rand = (String) ServletActionContext.getRequest().getSession().getAttribute("rand");

		PrintWriter out = ServletActionContext.getResponse().getWriter();
		if (rand.equalsIgnoreCase(this.code)) {
			out.print("true");
		} else {
			out.print("false");
		}
		return null;
	}

	public String validatePoints() {

		System.out.println(userid);
		try {
			User user = frontUserService.getUserById(userid);
			PrintWriter out = ServletActionContext.getResponse().getWriter();
			if (points<=user.getPoints()) {
				out.print("true");
			}else {
				out.print("false");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	public String findAll() {
		try {
			List<Question> questions = frontQuestionService.findAll();
			System.out.println(questions);
			List<Question> allQuestionStatus1 = new LinkedList<>();
			for (Question question : questions) {
				if (question.getStatus() != 0) {
					allQuestionStatus1.add(question);
				}
			}
			List<Question> allQuestionStatus0 = new LinkedList<>();
			for (Question question : questions) {
				if (question.getStatus() == 0) {
					allQuestionStatus0.add(question);
				}
			}
			List<Question> allQuestionCountZero = new LinkedList<>();
			for (Question question : questions) {
				if (question.getAnswer() == null) {
					allQuestionCountZero.add(question);
				}
			}
			List<Question> allQuestionPoints = new LinkedList<>();
			for (Question question : questions) {
				if (question.getPoints()>80) {
					allQuestionPoints.add(question);
				}
			}
			if (questions != null) {
				ServletActionContext.getRequest().setAttribute("allType", frontQuestionService.findAllTypes());
				ServletActionContext.getRequest().setAttribute("allQuestionStatus1", allQuestionStatus1);
				ServletActionContext.getRequest().setAttribute("allQuestionStatus0", allQuestionStatus0);
				ServletActionContext.getRequest().setAttribute("allQuestionCountZero", allQuestionCountZero);
				ServletActionContext.getRequest().setAttribute("allQuestionPoints", allQuestionPoints);
				return "sucker";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
