package com.kh.univ.register.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.service.RegisterService;
import com.kh.univ.register.model.vo.Register;

@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService rService;
	
//	   @RequestMapping("leave.do")
//	   public ModelAndView Leave(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) 
//	   {
//	      System.out.println(currentPage);
//
//	      mv.setViewName("register/register_leave");
//
//	      return mv;
//	   }
	   
//		@RequestMapping("leave.do")
//	    public String Leave()
//		{
//	        return "register/register_leave";
//	    }
		
	
	// 휴학페이지
		@RequestMapping("leave.do")
	    public ModelAndView Leave(HttpSession session, ModelAndView mv)
		{
			Student studentL = (Student)session.getAttribute("loginUser");
			
			Register studentLeave = rService.selectLeave(studentL);
			System.out.println(studentLeave);
			mv.addObject("studentLeave", studentLeave);
			mv.setViewName("register/register_leave");
			
	        return mv;
	    }
		
		   
		@RequestMapping("returning.do")
		public String Returing()
	    {
		    return "register/register_returning";
		}
		
		@RequestMapping("graduation.do")
		public String Graduation()
	    {
		    return "register/register_graduation";
		}

}
