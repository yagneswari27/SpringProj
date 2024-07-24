package com.rest.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rest.springboot.entity.Student;

public interface StudentRepo extends JpaRepository<Student,Integer> {

}
