package com.ims.main.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Placement {
	@Id
	@Column(name="Package")
	private float id;
	private String sname;
	private String scompany;
	private String sdegree;
	private String sclgname;
	private float cgpa;
	private String role;
	
	public void setRole(String role) {
		this.role=role;
	}
	public String getRole() {
		return role;
	}
	public float getId() {
		return id;
	}
	public void setId(float id) {
		this.id = id;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getScompany() {
		return scompany;
	}
	public void setScompany(String scompany) {
		this.scompany = scompany;
	}
	public String getSdegree() {
		return sdegree;
	}
	public void setSdegree(String sdegree) {
		this.sdegree = sdegree;
	}
	public String getSclgname() {
		return sclgname;
	}
	public void setSclgname(String sclgname) {
		this.sclgname = sclgname;
	}
	public float getCgpa() {
		return cgpa;
	}
	public void setCgpa(float cgpa) {
		this.cgpa = cgpa;
	}
	
	
}
