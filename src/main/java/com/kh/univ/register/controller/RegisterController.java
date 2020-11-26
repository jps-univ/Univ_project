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
	
	   
		/**
		 * 1. 휴학 페이지 
		 * @param session
		 * @param mv
		 * @return
		 */
		@RequestMapping("leave.do")
	    public ModelAndView Leave(HttpSession session, ModelAndView mv)
		{
			Student studentL = (Student)session.getAttribute("loginUser");
			Register studentLeave = rService.selectLeave(studentL);
			System.out.println("무슨 것이들 있냐?"+studentLeave);
			
			if(studentLeave.getStdStatus()==null) {
				studentLeave.setStdStatus("재학");
			}
			if(studentLeave.getApplicationStatus()==null || studentLeave.getApplicationStatus().equals("재학") ) {
				studentLeave.setApplicationStatus("신청가능");
			}else {
				studentLeave.setApplicationStatus("신청불가");
			}
			
			
			mv.addObject("studentLeave", studentLeave);
			mv.setViewName("register/register_leave");
			
	        return mv;
	    }
		
		
		/**
		 * 1_2. 휴학 신청
		 * @param session
		 * @param register
		 * @return
		 */
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
		/**
		 * 1_2_2. 휴학 신청 페이지 날짜 계산메소드
		 * @param addDate
		 * @return
		 */
		public  String DateCalculator(int addDate) {
			Date today = new Date();
			Calendar cal = Calendar.getInstance();
			cal.setTime(today);
			cal.set(Calendar.MONTH,cal.get(Calendar.MONTH)+(int)addDate);
			Date backDate = cal.getTime();
			
			return new SimpleDateFormat("yy-MM-dd").format(backDate);
			
		}
		
		   
		
		/**
		 * 2. 복학페이지
		 * @param session
		 * @param mv
		 * @return
		 */
		@RequestMapping("returning.do")		
	    public ModelAndView Returning(HttpSession session, ModelAndView mv)
		{
			Student studentR = (Student)session.getAttribute("loginUser");
			Register studentReturning = rService.selectReturning(studentR);
			System.out.println(studentReturning);
			
//				
				if(studentReturning.getStdStatus().equals("휴학")) {
					studentReturning.setApplicationStatus("신청가능");
				}else {
					studentReturning.setApplicationStatus("신청불가");
				}
				
//			if(studentReturning.getStdStatus() != (null || "졸업")) {
//				studentReturning.setStdStatus("휴학");
//			}
			
			mv.addObject("studentReturning", studentReturning);
			mv.setViewName("register/register_returning");
			
	        return mv;
	    }
		
		/**
		 * 2_2. 복학 정보 INSERT
		 * @return
		 */
		@RequestMapping("returning_approve.do")
		public String ReturningApprove(HttpSession session, InsertRegister insertRegister) {
			Student studentL = (Student)session.getAttribute("loginUser");
			Date today = new Date();
			Calendar cal = Calendar.getInstance();
			cal.setTime(today);
			
			insertRegister.setStdId(studentL.getStdId());
			insertRegister.setApplicationStatus("복학신청중");
			insertRegister.setStdStatus("복학신청중");
			insertRegister.setReturngingAsk(new SimpleDateFormat("yy-MM-dd").format(today));
			int result = rService.updateReturning(insertRegister);
			System.out.println(insertRegister);
			if(result>0) {
				return "redirect:returning.do";
			}else {
				return "common/errorPage";
			}
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
