package com.ims.main.service;


import java.util.List;


import com.ims.main.model.Course;
import com.ims.main.model.Faculty;

import com.ims.main.model.Jobs;
import com.ims.main.model.Placement;
import com.ims.main.model.Student;

public interface Students {

	
//  Methods for Student pojo class	
	public void saveStudent(Student s);
	public List<Student> logincheck(String id, String password);
	public Iterable<Student> getStudents();
	public void deleteStudent(String id);
	
//	Methods for Faculty pojo class
	public void saveFaculty(Faculty f);
	public Iterable<Faculty> getFaculty();
	public void deleteFaculty(int id);
	
	
//	Methods for Course pojo class
	public void saveCourse(Course c);
	public Iterable<Course> getCourse();
	public void deleteCourse(String id);
	
	
	
//	methods for placement pojo class
	public void savePlacement(Placement p);
	public Iterable<Placement> getPlacement();
	public void deletePlacement(float id);
	
	
//	methods for jobs pojo class
	public void saveJobs(Jobs j);
	public Iterable<Jobs> getJobs();
	public void deleteJobs(int id);
	
	

	
	

	
}
