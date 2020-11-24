package com.kh.univ.register.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.service.RegisterService;
import com.kh.univ.register.model.vo.InsertRegister;
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
	
	    // 휴학페이지
		@RequestMapping("leave.do")
	    public ModelAndView Leave(HttpSession session, ModelAndView mv)
		{
			Student studentL = (Student)session.getAttribute("loginUser");
			Register studentLeave = rService.selectLeave(studentL);
			System.out.println("무슨 것이들 있냐?"+studentLeave);
			
			if(studentLeave.getStdStatus()==null) {
				studentLeave.setStdStatus("재학");
				if(studentLeave.getApplicationStatus()==null) {
					studentLeave.setApplicationStatus("신청가능");
				}
			}
			
			mv.addObject("studentLeave", studentLeave);
			mv.setViewName("register/register_leave");
			
	        return mv;
	    }
		
		// 휴학신청
		@ResponseBody
		@RequestMapping("leaveApply.do")
		public String leaveApply(HttpSession session, InsertRegister register) {
			
			Student studentL = (Student)session.getAttribute("loginUser");
			Date today = new Date();
			Calendar cal = Calendar.getInstance();
			cal.setTime(today);
			register.setStdId(studentL.getStdId());
			register.setApplicationStatus("휴학신청중");
			register.setLeaveDate(new SimpleDateFormat("yy-MM-dd").format(today));
			register.setApplicationDate(new SimpleDateFormat("yy-MM-dd").format(today));

			if(register.getLeavePeriod().equals("6개월")) {
				
				int addDate = 6;
				register.setReturningDate(DateCalculator(addDate));
				
			}else if(register.getLeavePeriod().equals("1년")) {
				
				int addDate = 12;
				register.setReturningDate(DateCalculator(addDate));

			}else {
				
				int addDate = 24;
				register.setReturningDate(DateCalculator(addDate));
			}

			
			int result = rService.leaveApply(register);
			
			if(result > 0) {
				return "ok";
			}else {
				return "fail";
			}
			
			
		}
		public  String DateCalculator(int addDate) {
			Date today = new Date();
			Calendar cal = Calendar.getInstance();
			cal.setTime(today);
			cal.set(Calendar.MONTH,cal.get(Calendar.MONTH)+(int)addDate);
			Date backDate = cal.getTime();
			
			return new SimpleDateFormat("yy-MM-dd").format(backDate);
			
		}
		
		   
		// 복학페이지
		@RequestMapping("returning.do")		
	    public ModelAndView Returning(HttpSession session, ModelAndView mv)
		{
			Student studentR = (Student)session.getAttribute("loginUser");
			
			Register studentReturning = rService.selectReturning(studentR);
			System.out.println(studentReturning);
			mv.addObject("studentReturning", studentReturning);
			mv.setViewName("register/register_returning");
			
	        return mv;
	    }
		
		
		
		// 졸업페이지
		@RequestMapping("graduation.do")
	    public ModelAndView Graduation(HttpSession session, ModelAndView mv)
		{
			Student studentG = (Student)session.getAttribute("loginUser");
			
			Register studentGraduation = rService.selectGraduation(studentG);
			System.out.println(studentGraduation);
			mv.addObject("studentGraduation", studentGraduation);
			mv.setViewName("register/register_graduation");
			
	        return mv;
	    }

}
