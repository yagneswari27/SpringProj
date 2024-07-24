package com.rest.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rest.springboot.entity.Student;
import com.rest.springboot.repository.StudentRepo;

@Service
public class StudentService {
	@Autowired
	private StudentRepo studentRepo;
	public Student saveDetails(Student student) {
		return studentRepo.save(student);
	}
}
