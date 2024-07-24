package com.rest.springboot.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="studentInfo1")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student {
	@jakarta.persistence.Id
	@GeneratedValue
	private int Id;
	@Column(name="std_name")
	private String Name;
	@Column(name="std_marks")
	private int Mark;
}
