package com.zhiyou.ssh.vo;
// Generated 2017-9-7 21:38:41 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@SuppressWarnings("serial")
@Entity
@Table(name="answer",catalog="ssh")
public class Answer implements java.io.Serializable {

	private Integer aid;
	private Question question;
	private User user;
	private String content;
	private Date retdate;
	private Set<Question> questions = new HashSet<>(0);

	public Answer() {
	}

	public Answer(Question question, User user, String content, Date retdate, Set<Question> questions) {
		this.question = question;
		this.user = user;
		this.content = content;
		this.retdate = retdate;
		this.questions = questions;
	}

	@Id
	@GeneratedValue
	@Column(name = "aid", unique = true, nullable = false, length = 11)
	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="qid")
	public Question getQuestion() {
		return this.question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="userid")
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name="CONTENT",length=65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name="RETDATE")
	public Date getRetdate() {
		return this.retdate;
	}

	public void setRetdate(Date retdate) {
		this.retdate = retdate;
	}

	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,mappedBy="answer")
	public Set<Question> getQuestions() {
		return this.questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}

}
