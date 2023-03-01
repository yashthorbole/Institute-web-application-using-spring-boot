package com.ims.main.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ims.main.model.Faculty;


//crud repository for Faculty pojo class
public interface Repository1 extends CrudRepository<Faculty, Integer> {
	
	public List<Faculty>findByIdAndFfname(int id ,String ffname);

}
