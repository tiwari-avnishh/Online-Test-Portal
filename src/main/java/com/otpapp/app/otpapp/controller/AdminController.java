package com.otpapp.app.otpapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.otpapp.app.otpapp.dto.QbDto;
import com.otpapp.app.otpapp.model.Enquiry;
import com.otpapp.app.otpapp.model.Qb;
import com.otpapp.app.otpapp.model.Response;
import com.otpapp.app.otpapp.model.Result;
import com.otpapp.app.otpapp.model.StudentInfo;
import com.otpapp.app.otpapp.service.EnquiryRepo;
import com.otpapp.app.otpapp.service.QbRepo;
import com.otpapp.app.otpapp.service.ResponseRepo;
import com.otpapp.app.otpapp.service.ResultRepo;
import com.otpapp.app.otpapp.service.StudentInfoRepo;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	StudentInfoRepo stdrepo;

	@Autowired
	EnquiryRepo erepo;

	@Autowired
	ResponseRepo resrepo;

	@Autowired
	QbRepo qbrepo;

	@Autowired
	ResultRepo rerepo;

	@GetMapping("/adhome")
	public String showAdminHome(HttpSession session, HttpServletResponse response, Model model) {
		try {
			response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
			if (session.getAttribute("adminid") != null) {
				Long stdcount = stdrepo.count();
				model.addAttribute("stdcount", stdcount);
				Long enqcount = erepo.count();
				model.addAttribute("enqcount", enqcount);
				Long fedcount = resrepo.count();
				model.addAttribute("fedcount", fedcount);
				Long comcount = resrepo.count();
				model.addAttribute("comcount", comcount);
				Long qcount = qbrepo.count();
				model.addAttribute("qcount", qcount);
				return "admin/adminhome";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/viewstudent")
	public String showViewStudent(HttpSession session, HttpServletResponse response, Model model) {
		try {
			response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
			if (session.getAttribute("adminid") != null) {

				List<StudentInfo> slist = stdrepo.findAll();
				model.addAttribute("slist", slist);
				return "admin/viewstudent";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/viewstudent/delete")
	public String deleteStudent(@RequestParam String email, HttpSession session,
			RedirectAttributes redirectattributes) {

		try {
			if (session.getAttribute("adminid") != null) {
				StudentInfo st = stdrepo.findById(email).get();
				stdrepo.delete(st);
				redirectattributes.addFlashAttribute("msg", email + "is deleted Successfully");
				return "redirect:/admin/viewstudent";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/addminlogin";
		}
	}

	@GetMapping("/viewenquiry")
	public String showViewEnquiry(HttpSession session, HttpServletResponse response, Model model) {
		try {
			response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
			if (session.getAttribute("adminid") != null) {

				List<Enquiry> elist = erepo.findAll();
				model.addAttribute("elist", elist);

				return "admin/viewenquiry";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/viewenquiry/delete")
	public String DeleteEnquiry(@RequestParam int id, HttpSession session, HttpServletResponse response, Model model,
			RedirectAttributes redirectAttributes) {
		try {
			if (session.getAttribute("adminid") != null) {
				Enquiry er = erepo.findById(id).get();
				erepo.delete(er);
				redirectAttributes.addFlashAttribute("msg", "Enquiry is deleted Successfuly");
				return "redirect:/admin/viewenquiry";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/viewfeedback/delete")
	public String DeleteFeedback(@RequestParam Integer resid, HttpSession session, HttpServletResponse response,
			Model model, RedirectAttributes redirectAttributes) {
		try {
			if (session.getAttribute("adminid") != null) {
				Response st = resrepo.findById(resid).get();
				resrepo.delete(st);
				redirectAttributes.addFlashAttribute("msg", "Feedback is deleted Successfuly");
				return "redirect:/admin/viewfeedback";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/viewfeedback")
	public String showViewFeedback(HttpSession session, HttpServletResponse response, Model model) {
		try {
			response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
			if (session.getAttribute("adminid") != null) {

				List<Response> flist = resrepo.FindResponseByResponseType("Feedback");
				model.addAttribute("flist", flist);
				return "admin/viewfeedback";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/viewcomplaint")
	public String showViewComplaint(HttpSession session, HttpServletResponse response, Model model) {
		try {
			response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
			if (session.getAttribute("adminid") != null) {

				List<Response> clist = resrepo.FindResponseByResponseType("Complaint");
				model.addAttribute("clist", clist);
				return "admin/viewcomplaint";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/viewcomplaint/delete")
	public String DeleteComplaint(@RequestParam Integer resid, HttpSession session, HttpServletResponse response,
			Model model, RedirectAttributes redirectAttributes) {
		try {
			if (session.getAttribute("adminid") != null) {
				Response st = resrepo.findById(resid).get();
				resrepo.delete(st);
				redirectAttributes.addFlashAttribute("msg", "Complaint is deleted Successfuly");
				return "redirect:/admin/viewcomplaint";
			} else {
				return "redirect:/admin/viewcomplaint";
			}
		} catch (Exception e) {
			return "redirect:/admin/viewcomplaint";
		}
	}

	@GetMapping("/logout")
	public String Logout(HttpSession session) {
		session.invalidate();
		return "redirect:/adminlogin";
	}

	@GetMapping("/addqb")
	public String AddQb(HttpSession session, HttpServletResponse response, Model model) {
		try {
			response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
			if (session.getAttribute("adminid") != null) {
				QbDto dto = new QbDto();
				model.addAttribute("dto", dto);
				return "admin/addqb";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@PostMapping("/addqb")
	public String createQb(HttpSession session, HttpServletResponse response, @ModelAttribute QbDto dto,
			RedirectAttributes attrib) {

		response.setHeader("cache-control", "no-cache, no-store, must-revalidate");
		if (session.getAttribute("adminid") != null) {
			Qb qb = new Qb();
			qb.setYear(dto.getYear());
			qb.setQuestion(dto.getQuestion());
			qb.setA(dto.getA());
			qb.setB(dto.getB());
			qb.setC(dto.getC());
			qb.setD(dto.getD());
			qb.setCorrect(dto.getCorrect());
			qbrepo.save(qb);
			attrib.addFlashAttribute("msg", "Question is Added");
			return "redirect:/admin/addqb";
		} else {
			return "redirect:/adminlogin";
		}

	}

	@GetMapping("/viewqb")
	public String viewQB(HttpSession session, Model model, HttpServletResponse response) {
		try {
			if (session.getAttribute("adminid") != null) {

				List<Qb> qblist = qbrepo.findAll();
				model.addAttribute("qblist", qblist);
				return "admin/viewqb";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("viewqb/delete")
	public String deleteQB(@RequestParam int id, RedirectAttributes redirectAttributes, HttpSession session) {
		try {
			if (session.getAttribute("adminid") != null) {
				Qb qb = qbrepo.findById(id).get();
				qbrepo.delete(qb);
				redirectAttributes.addFlashAttribute("msg", "Question Deleted Successfully");
				return "redirect:/admin/viewqb";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}

	@GetMapping("/manageresult")
	public String ViewManageResult(HttpSession session, Model model, HttpServletResponse response) {
		try {
			if (session.getAttribute("adminid") != null) {
				List<Result> rlist = rerepo.findAll();
				model.addAttribute("rlist", rlist);
				return "admin/manageresult";
			} else {
				return "redirect:/adminlogin";
			}
		} catch (Exception e) {
			return "redirect:/adminlogin";
		}
	}
}
