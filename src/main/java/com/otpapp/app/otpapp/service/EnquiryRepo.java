package com.otpapp.app.otpapp.service;

import org.springframework.data.jpa.repository.JpaRepository;

import com.otpapp.app.otpapp.model.Enquiry;

public interface EnquiryRepo extends JpaRepository<Enquiry, Integer> {

}
