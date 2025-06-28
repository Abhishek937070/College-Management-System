package com.MyWebProject.repo;

import org.springframework.data.repository.CrudRepository;

import com.MyWebProject.Entities.Student;

public interface StudentRepo extends CrudRepository<Student, Integer> 
{
	public Student findByEmailAndPassword(String email, String Password);
}
