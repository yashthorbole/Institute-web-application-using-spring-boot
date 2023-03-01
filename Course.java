package com.ims.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Course {
	@Id
	@Column(name = "Duration")
	private String id;
	private String cname;
	private String cprof;
	private String cdetails;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCprof() {
		return cprof;
	}
	public void setCprof(String cprof) {
		this.cprof = cprof;
	}
	public String getCdetails() {
		return cdetails;
	}
	public void setCdetails(String cdetails) {
		this.cdetails = cdetails;
	}
	
	
	
	
}
