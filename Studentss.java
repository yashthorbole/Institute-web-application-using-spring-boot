package com.ims.main.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ims.main.model.Course;
import com.ims.main.model.Faculty;

import com.ims.main.model.Jobs;
import com.ims.main.model.Placement;
import com.ims.main.model.Student;
import com.ims.main.repository.Repository;
import com.ims.main.repository.Repository1;
import com.ims.main.repository.RepositoryC;

import com.ims.main.repository.RepositoryJ;
import com.ims.main.repository.RepositoryP;
@Service
public class Studentss implements Students {
	
	@Autowired
	Repository re;
	
	@Override
	public void saveStudent(Student s) {
		re.save(s);
	}
	@Override
	public List<Student> logincheck(String id, String password) {
		List<Student> list=re.findByIdAndPassword(id, password);
		return list;
	}
	@Override
	public Iterable<Student> getStudents(){
		Iterable<Student> student=re.findAll();
		return student;
	}
	@Override
	public void deleteStudent(String id) {
		re.deleteById(id);
	}
	
//	Overriden methods of faculty 
	
	@Autowired
	Repository1 r1;
	
	@Override
	public void saveFaculty(Faculty f) {
		r1.save(f);
	}
	@Override
	public Iterable<Faculty> getFaculty(){
		Iterable<Faculty> faculty=r1.findAll();
		return faculty;
	}
	@Override
	public void deleteFaculty(int id) {
		r1.deleteById(id);
	}
//	overriden methods of course
	@Autowired
	RepositoryC c;
	
	@Override
	public void saveCourse(Course cc) {
		c.save(cc);
	}
	@Override
	public Iterable<Course> getCourse(){
		Iterable<Course> course=c.findAll();
		return course;
	}
	@Override
	public void deleteCourse(String id) {
		c.deleteById(id);
	}
	
//	overriden methods of placement
	@Autowired
	RepositoryP p;
	
	@Override
	public void savePlacement(Placement pp) {
		p.save(pp);
	}
	@Override
	public Iterable<Placement> getPlacement(){
		Iterable<Placement> placement=p.findAll();
		return placement;
	}
	@Override
	public void deletePlacement(float id) {
		p.deleteById(id);
	}
	
//	overriden methods of openings
	@Autowired
	RepositoryJ j;
	
	@Override
	public void saveJobs(Jobs jj) {
		j.save(jj);
	}
	@Override
	public Iterable<Jobs> getJobs(){
		Iterable<Jobs> jobs=j.findAll();
		return jobs;
	}
	public void deleteJobs(int id) {
		j.deleteById(id);
	}	

}
