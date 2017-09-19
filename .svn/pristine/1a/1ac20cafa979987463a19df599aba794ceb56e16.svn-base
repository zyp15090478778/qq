package com.zhiyou.ssh.vo;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@SuppressWarnings("serial")
@Entity
@Table(name = "user", catalog = "ssh")
public class User implements java.io.Serializable {

	private String userid;
	private String password;
	private Integer points;
	private Date registeredtime;
	private String sex;
	private String email;
	private String image;
//	private Set<Answer> answers = new HashSet<>(0);
//	private Set<Question> questions = new HashSet<>(0);

	public User() {
	}

	public User(String userid, String password) {
		this.userid = userid;
		this.password = password;
	}

	public User(String userid, String password, Integer points, Date registeredtime, String sex, String email,
			String image, Set<Answer> answers, Set<Question> questions) {
		this.userid = userid;
		this.password = password;
		this.points = points;
		this.registeredtime = registeredtime;
		this.sex = sex;
		this.email = email;
		this.image = image;
//		this.answers = answers;
//		this.questions = questions;
	}

	@Id
	// @GeneratedValue(generator = "uuid")@GenericGenerator(name = "uuid", strategy
	// = "uuid") //代表自增字符串
	// @GeneratedValue() //代表自增int数字

	// 删掉上面的两个是去掉自增 （直接保存主键）
	@Column(name = "userid", unique = true, nullable = false, length = 200)
	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Column(name = "password", nullable = false, length = 32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "points")
	public Integer getPoints() {
		return this.points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	@Column(name = "registeredtime")
	public Date getRegisteredtime() {
		return this.registeredtime;
	}

	public void setRegisteredtime(Date registeredtime) {
		this.registeredtime = registeredtime;
	}

	@Column(name = "sex", length = 10)
	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Column(name = "email", length = 50)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "image", length = 200)
	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

//	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
//	public Set<Answer> getAnswers() {
//		return this.answers;
//	}
//
//	public void setAnswers(Set<Answer> answers) {
//		this.answers = answers;
//	}
//
//	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
//	public Set<Question> getQuestions() {
//		return this.questions;
//	}
//
//	public void setQuestions(Set<Question> questions) {
//		this.questions = questions;
//	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", password=" + password + ", points=" + points + ", registeredtime="
				+ registeredtime + ", sex=" + sex + ", email=" + email + ", image=" + image + "]";
	}

}
