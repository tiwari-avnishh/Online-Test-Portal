package com.otpapp.app.otpapp.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.otpapp.app.otpapp.model.Result;

public interface ResultRepo extends JpaRepository<Result, String> {

	@Query(value="select status from results where emailaddress=:emailaddress",nativeQuery = true)
	String getStatus(@Param("emailaddress") String emailaddress);

}
