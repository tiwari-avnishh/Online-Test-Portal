package com.otpapp.app.otpapp.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.otpapp.app.otpapp.model.StudentInfo;

public interface StudentInfoRepo extends JpaRepository<StudentInfo, String>{
	
}
