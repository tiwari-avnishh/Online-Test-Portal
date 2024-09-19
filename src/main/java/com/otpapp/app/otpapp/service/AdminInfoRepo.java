package com.otpapp.app.otpapp.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.otpapp.app.otpapp.model.AdminInfo;

public interface AdminInfoRepo extends JpaRepository<AdminInfo, String>
{

}
