package com.MyWebProject.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.MyWebProject.Entities.Student;
import com.MyWebProject.repo.StudentRepo;

@Repository

public class StudentDao 
{
	@Autowired
	public StudentRepo repo;
	
	public void saveDataDao(Student std)
	{
		repo.save(std);
	}

	public Student checkSignInDao(String email, String password)
	{
		
		return repo.findByEmailAndPassword(email,password);
		
	}
	
	
	public List<Student> getAllStudentsDao()
	{
		List<Student> stud_list =	(List<Student>)repo.findAll();
		return stud_list;
	}
	
	
	public Student getStudentDao(int sid)
	{
		Student std = repo.findById(sid).get();
		
		return std;
	}
	
	
	public Student  studentEditDao(int sid , Student std)
	{
		
		Optional<Student> result =  repo.findById(sid);
		
			if(result.isPresent())
			{
				return repo.save(std);
			}
			return null;
	}
	
	
	
	
	
	
	
	
	
}