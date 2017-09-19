package com.zhiyou.ssh.vo;
// Generated 2017-9-7 21:50:40 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="admin", catalog="ssh")
public class Admin implements java.io.Serializable {

	private String adminid;
	private String password;

	public Admin() {
	}

	public Admin(String adminid, String password) {
		this.adminid = adminid;
		this.password = password;
	}

	@Id
	@Column(name="adminid", unique=true, nullable=false, length=200)
	public String getAdminid() {
		return this.adminid;
	}

	public void setAdminid(String adminid) {
		this.adminid = adminid;
	}

	@Column(name="password", nullable=false, length=32)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", password=" + password + "]";
	}
	
	

}
