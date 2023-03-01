package com.ims.main.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ims.main.model.Student;


//crud repository for students pojo class
public interface Repository extends CrudRepository<Student, String> {
	public List<Student>findByIdAndPassword(String id, String password);

}
