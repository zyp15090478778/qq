package com.zhiyou.ssh.vo;
// Generated 2017-9-7 21:38:41 by Hibernate Tools 5.2.3.Final

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="notice",catalog="ssh")
public class Notice implements java.io.Serializable {

	private Integer nid;
	private String title;
	private String content;
	private Date pubtime;

	public Notice() {
	}

	public Notice(String title) {
		this.title = title;
	}

	public Notice(String title, String content, Date pubtime) {
		this.title = title;
		this.content = content;
		this.pubtime = pubtime;
	}

	@Id
	@GeneratedValue
	@Column(name="nid",unique=true,nullable=false,length=11)
	public Integer getNid() {
		return this.nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	@Column(name="title",nullable=false,length=50)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name="content",length=65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name="pubtime")
	public Date getPubtime() {
		return this.pubtime;
	}

	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
	}

}
