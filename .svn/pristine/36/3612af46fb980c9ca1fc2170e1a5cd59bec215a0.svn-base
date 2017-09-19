package com.zhiyou.ssh.vo;
// Generated 2017-9-7 21:38:41 by Hibernate Tools 5.2.3.Final

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

//import org.aspectj.weaver.patterns.TypePatternQuestions.Question;

@SuppressWarnings("serial")
@Entity
@Table(name = "type", catalog = "ssh")
public class Type implements java.io.Serializable {

	private Integer tid;
	private String title;
	private String description;
//	private Set<Question> questions = new HashSet<>(0);

	public Type() {
	}

//	public Type(String title, String description, Set<Question> questions) {
//		this.title = title;
//		this.description = description;
//		this.questions = questions;
//	}
	
	
	public Type(Integer tid, String title, String description) {
		super();
		this.tid = tid;
		this.title = title;
		this.description = description;
	}

	@Id
	@GeneratedValue
	@Column(name = "tid", unique = true, nullable = false)
	public Integer getTid() {
		return this.tid;
	}


	public void setTid(Integer tid) {
		this.tid = tid;
	}

	@Column(name = "title", length = 200)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

//	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "type")
//	public Set<Question> getQuestions() {
//		return this.questions;
//	}
//
//	public void setQuestions(Set<Question> questions) {
//		this.questions = questions;
//	}

	@Override
	public String toString() {
		return "Type [tid=" + tid + ", title=" + title + ", description=" + description +"]";
	}

}
