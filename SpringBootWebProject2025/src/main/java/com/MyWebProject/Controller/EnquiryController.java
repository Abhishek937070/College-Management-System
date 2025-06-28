package com.MyWebProject.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.MyWebProject.Dao.EnquiryDao;
import com.MyWebProject.Dao.StudentDao;
import com.MyWebProject.Entities.Enquiry;
import com.MyWebProject.Entities.Student;

@Controller
public class EnquiryController 
{

	@Autowired
	StudentDao stdDao;
	
	@Autowired
	EnquiryDao enqDao;
	
	@RequestMapping("/EnquiryForm")
	public String EnquiryForm(@RequestParam("sid") int sid , Model model)
	{
		Student std = stdDao.getStudentDao(sid);
		model.addAttribute("std", std);		
		return "Student/Enquiry" ;
	}
	
	
	
	@PostMapping("/saveEnquiryData")
	public String saveEnquiryData(@RequestParam("sid") int sid, Enquiry enq, Model model)
	{
	    Student std = stdDao.getStudentDao(sid); // Fetch student using sid
	    enq.setStudent(std); // Attach student to enquiry

	    enqDao.saveEnquiryDataDao(enq);

	    model.addAttribute("msg", "Enquiry Saved Successfully...");
	    model.addAttribute("std", std); // Keep student data for redisplay
	    return "Student/Enquiry";
	}
	
	/*
	 * @PostMapping ("/saveEnquiryData") public String saveEnquiryData(Enquiry enq ,
	 * Model model) { enqDao.saveEnquiryDataDao(enq); // std
	 * model.addAttribute("msg", "Enquiry Save Successfully..."); return
	 * "Student/Enquiry"; }
	 */
	
	@RequestMapping("/MyAllEnquiry")
	public String MyAllEnquiry(@RequestParam("sid") int sid, Model model) {
	    List<Enquiry> enq_list = enqDao.MyAllEnquiryDao(sid);
	    model.addAttribute("enq_list", enq_list);

	    Student std = stdDao.getStudentDao(sid);
	    model.addAttribute("std", std);  // ✅ This is critical
	    return "Student/MyEnquiry";
	}
	/*
	 * @RequestMapping("/MyAllEnquiry") public String
	 * MyAllEnquiry(@RequestParam("sid")int sid,Model model) { List<Enquiry>
	 * enq_list =enqDao.MyAllEnquiryDao(sid); model.addAttribute("enq_list",
	 * enq_list);
	 * 
	 * return "Student/MyEnquiry"; }
	 */
	
	// Enquiry + Student Data
	
	@RequestMapping("/ViewAllEnquiry")
	public String viewAllEnquiry(Model model)
	{
		List<Enquiry> enq_list = enqDao.viewAllEnquiryDao();
		model.addAttribute("enq_list", enq_list);
		
		return  "Admin/ViewAllEnquiry";
	}
	
	@RequestMapping("/SetRemark")
	public  String setRemark(@RequestParam("eid") int eid, Model model)
	{
		
		Enquiry enq =   enqDao.getEnquiry(eid);
		
		model.addAttribute("enq", enq);
		
		return "Admin/SetRemark";
	}
	
	
	@PostMapping("/SetRemarkSucess")
	public String setRemarkSucess(@RequestParam("eid") int eid , Enquiry enq, Model model)
	{
		Enquiry result = enqDao.setRemarkSucessDao(eid, enq);
		model.addAttribute("msg", "Enquiry Changed Sucessfully");
		return "Admin/SetRemark";
		
	}
	
	@GetMapping("/deleteEnquiry")
	public String deleteEnquiry(@RequestParam("eid") int eid, @RequestParam("sid") int sid , Model model )
	{
		List<Enquiry> enq_list = enqDao.deleteEnquiryDao(eid, sid);
		
		model.addAttribute("enq_list", enq_list);
		Student std = stdDao.getStudentDao(sid);
		model.addAttribute("std", std);
		return "Student/MyEnquiry";
	}
	
	

	
	
}
