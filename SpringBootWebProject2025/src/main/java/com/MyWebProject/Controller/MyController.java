package com.MyWebProject.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.MyWebProject.Dao.StudentDao;
import com.MyWebProject.Entities.Student;

@Controller

public class MyController {
	
	@Autowired
	public StudentDao stdDao;
	
	@RequestMapping("/Home")
	public String home() 
	{
		return "Home";
	}
	
	
	@RequestMapping("/Signup")
	public String signup(Model model) 
	{
		model.addAttribute("std" , new Student());
		return "Signup";
	}
	
	@PostMapping("/saveData")
	public String saveData(Student std , Model model )
	{
		stdDao.saveDataDao(std);
		model.addAttribute("msg", "Registration Sucessfull");
		
		return "Signup";
	}

	@RequestMapping("/Signin")
	public String signin() 
	{
		return "Signin";
	}
	
	@RequestMapping("/adminsignin")
	public String adminSignIn() 
	{
		return "AdminSignIn";
	}
	
	@GetMapping("/checkSignIn")
	public String checkSignIn(String type, String email, String password, Model model)
	{
		
		if(type.equals("Admin"))
		{
			if (email.equals("admin@gmail.com") && password.equals("1234"))
			{
			return "Admin/Admin_Home";
			}
			else
			{
				model.addAttribute("errorMsg", "Invalid Admin");
				return "Signin";	
			}
		}
		else 
		{
		
			Student std=stdDao.checkSignInDao(email,password);
		
			if(std != null)
			{
				
				
				
				
				
				
				
				
				
				
				if(std.getstatus().equals("Accept"))
				{
				    return "redirect:/getStudentHomePage?sid=" + std.getSid();
				}
				
				
				
				
				
				else
				{
					model.addAttribute("errorMsg", "Your Staatus Is Pending");
					return "Signin";	
				}
			}
			else
			{
				model.addAttribute("errorMsg", "Invalid Email or Password");
				return "Signin";
			}
		
		}
	}
	@ResponseBody
	@RequestMapping("/viewAllStudentsData")
	public List<Student> getAllStudentsData(Model model)
	{
		
	List<Student> stud_List = stdDao.getAllStudentsDao();
		
		model.addAttribute("stud_list", stud_List);
		return stud_List;
	}
	
	@RequestMapping("/viewAllStudentsPage")
	public String getAllStudentsPage(Model model)
	{
		
	List<Student> stud_List = stdDao.getAllStudentsDao();
		
		model.addAttribute("stud_list", stud_List);
		return "Admin/StudentList";
	}
	
	
	

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/viewStudent") public Optional<Student>
	 * getStudent(@RequestParam("sid") int sid, Model model) { Optional<Student> std
	 * = stdDao.getStudentDao(sid); return std; }
	 */
	@ResponseBody	 
	@RequestMapping("/viewStudent") 
	public Student getStudent (int sid, Model model)
	{ 
		Student std= stdDao.getStudentDao(sid); 
		return std; 
	}
	
	@RequestMapping("/getAdminHomePage")
	public String getAdminHome()
	{
		return "Admin/Admin_Home";
	}
	
	
	
	
	
	
	
	
	@RequestMapping("/getStudentHomePage")
	public String getStudentHome(@RequestParam("sid") int sid, Model model)
	{
	    Student std = stdDao.getStudentDao(sid);
	    model.addAttribute("std", std);
	    return "Student/Student_Home";
	}
	
	
	
	
	/*
	 * @RequestMapping("/getStudentHomePage") public String getStudentHome
	 * (@RequestParam ("sid")int sid,Model model) { Student std =
	 * stdDao.getStudentDao(sid);
	 * 
	 * model.addAttribute("std", std);
	 * 
	 * return "Student/Student_Home"; }
	 */
	
	
	
	@RequestMapping("/studentEdit")
	public String studentEdit(@RequestParam("sid") int sid, Model model)
	{
		Student std = stdDao.getStudentDao(sid);
		
		
		model.addAttribute("std", std);
		return "Admin/SignupEdit";
	}
	
	
	@PostMapping("/studentEditSucess")
	public String studentEditSucess(@ RequestParam("sid") int sid, Student std, Model model) 
	{
		Student std_edit = stdDao.studentEditDao (sid , std);	
		model.addAttribute("std" , std_edit);
		model.addAttribute("msg" , "Data Save Sucessfully");
		return "Admin/SignupEdit";
	}
	
	
	@PostMapping("/myProfileEditSucess")
	public String myProfileEditSucess(@ RequestParam("sid") int sid, Student std, Model model) 
	{
		Student std_edit = stdDao.studentEditDao (sid , std);	
		model.addAttribute("std" , std_edit);
		model.addAttribute("msg" , "Data Save Sucessfully");
		return "Student/MyProfile";
	}
	
	
	@RequestMapping("/MyProfile")
	public String myProfile(@RequestParam("sid") int sid, Model model)
	{
		Student std = stdDao.getStudentDao(sid);
		
		
		model.addAttribute("std", std);
		return "Student/MyProfile";
	}
	
	@RequestMapping("/AboutUs")
	public String aboutUs() {
	    return "AboutUs"; 
	}
	 
	
}
