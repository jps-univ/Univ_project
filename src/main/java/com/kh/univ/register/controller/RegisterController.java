package com.kh.univ.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
	
//	   @RequestMapping("leave.do")
//	   public ModelAndView Leave(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) 
//	   {
//	      System.out.println(currentPage);
//
//	      mv.setViewName("register/register_leave");
//
//	      return mv;
//	   }
	   
		@RequestMapping("leave.do")
	    public String Leave()
		{
	        return "register/register_leave";
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
