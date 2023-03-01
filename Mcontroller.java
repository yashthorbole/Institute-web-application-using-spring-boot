package com.ims.main.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;


import com.ims.main.model.Course;
import com.ims.main.model.Faculty;

import com.ims.main.model.Jobs;
import com.ims.main.model.Placement;
import com.ims.main.model.Student;
import com.ims.main.service.Students;

@Controller
public class Mcontroller {

	@Autowired
	Students su;

//	Starting of project
	@RequestMapping(value="/")
	public String op() {
		return "welcome";
	}
	@RequestMapping(value="home")
	public String aop() {
		return "welcome";
	}
	@RequestMapping(value="log")
	public String log() {
		return "login";
	}
	@RequestMapping(value="reg")
	public String reg() {
		return "register";
	}
	
//	User input
	@RequestMapping(value="register")
	public String register(@ModelAttribute Student s) {
		su.saveStudent(s);
		return "login";
	}
	
//	admin login 
	@RequestMapping(value="login")
	public String alogin(@ModelAttribute Student s, ModelMap m) {
		if("admin@gmail.com".equals(s.getId()) && "admin".equals(s.getPassword())) {
			
			Iterable<Student> students=su.getStudents();
			m.addAttribute("data", students);
			
			Iterable<Faculty> faculty=su.getFaculty();
			m.addAttribute("dataf", faculty);
			
			Iterable<Course> course=su.getCourse();
			m.addAttribute("datac", course);
			
			Iterable<Placement> place=su.getPlacement();
			m.addAttribute("datap", place);
			
			Iterable<Jobs> jobs=su.getJobs();
			m.addAttribute("dataj", jobs);
			return "admin";
		}else {
			List<Student> list=su.logincheck(s.getId(), s.getPassword());
			if(!list.isEmpty()) {
				return "alogin";
			}else {
				return "register";
			}	
		}
	}
//	back button for admin
	@RequestMapping(value="back")
	public String back(ModelMap m) {
		Iterable<Student> students=su.getStudents();
		m.addAttribute("data", students);
		
		Iterable<Faculty> faculty=su.getFaculty();
		m.addAttribute("dataf", faculty);
		
		Iterable<Course> course=su.getCourse();
		m.addAttribute("datac", course);
		
		Iterable<Placement> place=su.getPlacement();
		m.addAttribute("datap", place);
		
		Iterable<Jobs> jobs=su.getJobs();
		m.addAttribute("dataj", jobs);
		return "admin";
	}
	
	

//	admin's access to modify data  {error}
//	Students related
	@RequestMapping(value="delete")
	public String delete(@RequestParam String id, ModelMap m) {
		su.deleteStudent(id);
		
		Iterable<Faculty> faculty=su.getFaculty();
		m.addAttribute("dataf", faculty);
		
		Iterable<Course> course=su.getCourse();
		m.addAttribute("datac", course);
		
		Iterable<Placement> place=su.getPlacement();
		m.addAttribute("datap", place);
		
		Iterable<Jobs> jobs=su.getJobs();
		m.addAttribute("dataj", jobs);
		
		Iterable<Student> students=su.getStudents();
		m.addAttribute("data", students);
		
		return "admin";
	}
//	Openings related
	@RequestMapping(value="delete1")
	public String delete1(@RequestParam int id, ModelMap m ) {
		su.deleteJobs(id);
		Iterable<Jobs> jobs=su.getJobs();
		m.addAttribute("dataj", jobs);
		return "jobs";
	}
//	Course related
	@RequestMapping(value="delete2")
	public String delete2(@RequestParam String id,ModelMap m) {
		su.deleteCourse(id);
		Iterable<Course> course=su.getCourse();
		m.addAttribute("datac", course);
		return "course";
	}
//	faculty related
	@RequestMapping(value="delete3")
	public String delete3(@RequestParam int id, ModelMap m) {
		su.deleteFaculty(id);
		Iterable<Faculty> faculty=su.getFaculty();
		m.addAttribute("dataf", faculty);
		return "fregister";
	}
//	Placements related
	@RequestMapping(value="delete4")
	public String delete4(@RequestParam float id, ModelMap m) {
		su.deletePlacement(id);
		Iterable<Placement> placed=su.getPlacement();
		m.addAttribute("datap", placed);
		return "placement";
	}
	
	
	
	
//	Admin pannel to add data
	@RequestMapping(value="freg")
	public String freg(@ModelAttribute Faculty f, ModelMap m) {
		Iterable<Faculty> faculty=su.getFaculty();
		m.addAttribute("dataf", faculty);
		return "fregister";
	}
	@RequestMapping(value="fregister")
	public String fregister(@ModelAttribute Faculty f, ModelMap m) {
		su.saveFaculty(f);
		Iterable<Faculty> faculty=su.getFaculty();
		m.addAttribute("dataf", faculty);
		return "fregister";
	}
	
	@RequestMapping(value="cadd")
	public String cadd(@ModelAttribute Course c, ModelMap m) {
		Iterable<Course> course=su.getCourse();
		m.addAttribute("datac", course);
		return "course";
	}
	@RequestMapping(value="course")
	public String caddagain(@ModelAttribute Course c, ModelMap m) {
		su.saveCourse(c);
		Iterable<Course> course=su.getCourse();
		m.addAttribute("datac", course);
		return "course";
	}
	@RequestMapping(value="placeds")
	public String placeds(@ModelAttribute Placement p, ModelMap m) {
		Iterable<Placement> place=su.getPlacement();
		m.addAttribute("datap", place);
		return "placement";
	}
	@RequestMapping(value="placement")
	public String placement(@ModelAttribute Placement p, ModelMap m) {
		su.savePlacement(p);
		Iterable<Placement> place=su.getPlacement();
		m.addAttribute("datap", place);
		return "placement";
	}
	@RequestMapping(value="tjob")
	public String tjob(@ModelAttribute Jobs j,ModelMap m) {
		Iterable<Jobs> job=su.getJobs();
		m.addAttribute("dataj", job);
		return "job";
	}
	@RequestMapping(value="job")
	public String job(@ModelAttribute Jobs j, ModelMap m) {
		su.saveJobs(j);
		Iterable<Jobs> jobs=su.getJobs();
		m.addAttribute("dataj", jobs);
		return "job";
	}

	
	
	
//	Users view
	@RequestMapping(value="ourcourse")
	public String ourcourse(@ModelAttribute Course c, ModelMap m) {
		Iterable<Course> course=su.getCourse();
		m.addAttribute("datac", course);
		return "courses";
	}
	@RequestMapping(value="ourfaculty")
	public String ourfaculty(@ModelAttribute Course c, ModelMap m) {
		Iterable<Faculty> faculty=su.getFaculty();
		m.addAttribute("dataf", faculty);
		return "faculty";
	}
	@RequestMapping(value="ourplacement")
	public String ourfaculty(@ModelAttribute Placement p, ModelMap m) {
		Iterable<Placement> place=su.getPlacement();
		m.addAttribute("datap", place);
		return "placements";
	}
	@RequestMapping(value="ourjob")
	public String ourjob(@ModelAttribute Jobs j, ModelMap m) {
		Iterable<Jobs> job=su.getJobs();
		m.addAttribute("dataj", job);
		return "jobs";
	}
	
	
	
}









