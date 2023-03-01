package com.ims.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Jobs {
	@Id
	@Column(name="SR._NO.")
	private int id;
	private String cname; 
	private String curl;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCurl() {
		return curl;
	}
	public void setCurl(String curl) {
		this.curl = curl;
	}
	
	

}
