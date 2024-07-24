package com.rest.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.rest.springboot.entity.Student;
import com.rest.springboot.service.StudentService;

@RestController
public class StudentController {
	@Autowired
	private StudentService studentService;
	@PostMapping("/addStudent")
	public Student postDetails(@RequestBody Student student) {
		return studentService.saveDetails(student);
	}
	
}
