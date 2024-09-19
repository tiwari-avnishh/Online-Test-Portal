package com.otpapp.app.otpapp.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.otpapp.app.otpapp.api.SmsSender;
import com.otpapp.app.otpapp.dto.AdminInfoDto;
import com.otpapp.app.otpapp.dto.EnquiryDto;
import com.otpapp.app.otpapp.dto.StudentInfoDto;
import com.otpapp.app.otpapp.model.AdminInfo;
import com.otpapp.app.otpapp.model.Enquiry;
import com.otpapp.app.otpapp.model.StudentInfo;
import com.otpapp.app.otpapp.service.AdminInfoRepo;
import com.otpapp.app.otpapp.service.EnquiryRepo;
import com.otpapp.app.otpapp.service.StudentInfoRepo;

import jakarta.persistence.EntityNotFoundException;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	
	@Autowired
	EnquiryRepo erepo;
	
	@Autowired
	StudentInfoRepo stdrepo; 
	
	@Autowired
	AdminInfoRepo adrepo;
	
	@GetMapping("/apply")
	public String showApply(Model model)
	{
		EnquiryDto dto=new EnquiryDto();
		model.addAttribute("dto", dto);
		return "apply";
	}
	
	@GetMapping("/contactus")
	public String showContactus(Model model)
	{
		EnquiryDto dto=new EnquiryDto();
		model.addAttribute("dto", dto);
		return "contactus";
	}
	@PostMapping("/contactus")
	public String SubmitEnquiry(@ModelAttribute EnquiryDto enquiryDto, BindingResult result, RedirectAttributes redirectAttributes)
	{
		try {
			Enquiry eq=new Enquiry();
			eq.setName(enquiryDto.getName());
			eq.setGender(enquiryDto.getGender());
			eq.setContactno(enquiryDto.getContactno());
			eq.setEmailaddress(enquiryDto.getEmailaddress());
			eq.setEnquirytext(enquiryDto.getEnquirytext());
			eq.setPosteddate(new Date()+"");
			erepo.save(eq);
			SmsSender ss=new SmsSender();
			ss.sendSms(enquiryDto.getContactno());
			redirectAttributes.addFlashAttribute("message", "Your Response Submitted Successfully");
			return "redirect:/contactus";
		} catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Something went wrong");
			return "redirect:/contactus";
		}
	}
	
	@GetMapping("/index")
	public String showIndex() {
		return "index";
	}
	
	@GetMapping("/aboutus")
	public String showAboutus() {
		return "aboutus";
	}
	@GetMapping("/registration")
	public String showRegistration(Model model ) {
		StudentInfoDto dto = new StudentInfoDto();
		model.addAttribute("dto", dto);
		return "registration";
	}
	
	@PostMapping("/registration")
	public String Registration(@ModelAttribute StudentInfoDto studentInfoDto,RedirectAttributes redirectAttributes )
	{
		try {
			
			StudentInfo std = new StudentInfo();
			std.setEnrollmentno(studentInfoDto.getEnrollmentno());
			std.setName(studentInfoDto.getName());
			std.setContactno(studentInfoDto.getContactno());
			std.setWhatsappno(studentInfoDto.getWhatsappno());
			std.setEmailaddress(studentInfoDto.getEmailaddress());
			std.setPassword(studentInfoDto.getPassword());
			std.setCollegename(studentInfoDto.getCollegename());
			std.setCourse(studentInfoDto.getCourse());
			std.setBranch(studentInfoDto.getBranch());
			std.setYear(studentInfoDto.getYear());
			std.setHighschool(studentInfoDto.getHighschool());
			std.setIndermediate(studentInfoDto.getIntermediate());
			std.setAggregatemarks(studentInfoDto.getAggregatemarks());
			std.setTrainingmode(studentInfoDto.getTrainingmode());
			std.setTraininglocation(studentInfoDto.getTraininglocation());
			std.setRegdate(new Date()+"");
			stdrepo.save(std);
			redirectAttributes.addFlashAttribute("message", "Registration successful");
			return "redirect:/registration";
		}  catch (Exception e) {
			redirectAttributes.addFlashAttribute("message", "Something went wrong" +e.getMessage());
			return "redirect:/registration";
		}
	}

	@GetMapping ("/studentlogin")
	public String showStudentLogin(Model model) {
		StudentInfoDto dto = new StudentInfoDto();
		model.addAttribute("dto", dto);
		return "studentlogin";
	}
	
	@PostMapping("/studentlogin")
	public String validateStudent(@ModelAttribute StudentInfoDto dto, HttpSession session, RedirectAttributes attrib) {
		try {
			StudentInfo s=stdrepo.getById(dto.getEmailaddress());
			if(s.getPassword().equals(dto.getPassword())) {
				//attrib.addFlashAttribute("msg", "Invalid User");
				session.setAttribute("studentid", s.getEmailaddress());
				return "redirect:/student/studenthome";
			}
			else {
				attrib.addFlashAttribute("msg", "Invaild User");
			}
			return "redirect:/studentlogin";
		}
		catch(EntityNotFoundException ex) {
			attrib.addFlashAttribute("msg", "Student doesn't exist");
			return "redirect:/studentlogin";
		}
	}
	
	@GetMapping("/adminlogin")
	public String showAdminLogin(Model model)
	{
		AdminInfoDto dto = new AdminInfoDto();
		model.addAttribute("dto", dto);
		return "adminlogin";
	}
	
	@PostMapping("/adminlogin")
	public String adminLogin(@ModelAttribute AdminInfoDto admininfodto, HttpSession session, RedirectAttributes redirectattributes) {
		
		try {
				AdminInfo adinfo = adrepo.getById(admininfodto.getUserid());
				if(adinfo.getPassword().equals(admininfodto.getPassword()))
				{
					//redirectattributes.addFlashAttribute("msg", "Valid User");
					session.setAttribute("adminid",admininfodto.getUserid());
					return "redirect:/admin/adhome";
				}
				else
				{
					redirectattributes.addFlashAttribute("msg", "Invalid User");
					return "redirect:/adminlogin";
				}
		} catch (Exception e) {
			redirectattributes.addFlashAttribute("msg", "User Doesn't exists"+e.getMessage());
			return "redirect:/adminlogin";
		}
		
	}

}
