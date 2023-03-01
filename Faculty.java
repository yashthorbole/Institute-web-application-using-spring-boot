package com.ims.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Faculty {
	@Id
	@Column(name="FID")
	private int id;
	private String ffname;
	private String flname;
	private String fq;
	private int fexp;
	private String sub;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFfname() {
		return ffname;
	}
	public void setFfname(String ffname) {
		this.ffname = ffname;
	}
	public String getFlname() {
		return flname;
	}
	public void setFlname(String flname) {
		this.flname = flname;
	}
	public String getFq() {
		return fq;
	}
	public void setFq(String fq) {
		this.fq = fq;
	}
	public int getFexp() {
		return fexp;
	}
	public void setFexp(int fexp) {
		this.fexp = fexp;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
}
