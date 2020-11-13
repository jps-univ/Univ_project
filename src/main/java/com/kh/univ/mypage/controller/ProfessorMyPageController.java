package com.kh.univ.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.model.service.ProfessorMyPageService;

@Controller
public class ProfessorMyPageController 
{
	@Autowired
	private ProfessorMyPageService mpService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("professor_info.do")
    public ModelAndView ProfessorInfo(ModelAndView mv, Professor professor, HttpSession session)
	{
		Professor sessioProfessor = (Professor)session.getAttribute("loginUser");

		Professor profDepartment = mpService.selectProfDepartment(sessioProfessor);

		String departmentName = profDepartment.getDepartmentName();
		String collegeCode = profDepartment.getCollegeCode();
		String collegeName = profDepartment.getCollegeName();

		mv.addObject("department", departmentName);
		mv.addObject("college", collegeCode);
		mv.addObject("college", collegeName);

		mv.setViewName("myPage/professorInfo");

		return mv;
    }
	
	@RequestMapping("professor_password.do")
	public String ProfessorPassword()
	{
		return "myPage/professorPassword";
	}
	
	@RequestMapping("professor_schedule.do")
	public String ProfessorSchedule()
	{
		return "myPage/professorSchedule";
	}
	
	// 상담 관리 페이지
	@RequestMapping("professor_consulting.do")
	public ModelAndView ProfessorConsulting(ModelAndView mv, HttpSession session)
	{
		Professor professor = (Professor)session.getAttribute("loginUser");

		ArrayList<Consulting> consult = mpService.selectApply(professor);
		System.out.println(consult);

		mv.addObject("consult", consult);

		mv.setViewName("myPage/professorConsulting");

		return mv;
	}
	
	// 교수 개인정보 변경
	@ResponseBody
	@RequestMapping("changeProfessorInfo.do")
	public String ChangeProfessorInfo(Professor professor, Model model, HttpSession session) 
	{
		Professor newProfessor = (Professor)session.getAttribute("loginUser");

		int result = mpService.changeProfPersonalInfo(professor);

		if(result > 0)
		{
			newProfessor.setProfTel(professor.getProfTel());
			newProfessor.setProfPhone(professor.getProfPhone());
			newProfessor.setProfEmail(professor.getProfEmail());
			newProfessor.setProfAddress(professor.getProfAddress());
			newProfessor.setProfAddressDetail(professor.getProfAddressDetail());
			newProfessor.setProfBank(professor.getProfBank());
			newProfessor.setProfAccount(professor.getProfAccount());
			newProfessor.setProfAccountHolder(professor.getProfAccountHolder());

			session.setAttribute("loginUser", newProfessor);

			return "ok";
		} 
		else
		{
			return "fail";
		}
	}
	
	// 교수 개인정보 동의 변경
	@ResponseBody
	@RequestMapping("changeProfAgreeInfo.do")
	public String ChangeProfAgreeInfo(Professor professor, Model model, HttpSession session) 
	{
		Professor sessionProfessor = (Professor)session.getAttribute("loginUser");

		int result = mpService.changeProfAgreeInfo(professor);

		if(result > 0) 
		{
			sessionProfessor.setProfSmsAgree(professor.getProfSmsAgree());
			sessionProfessor.setProfEmailAgree(professor.getProfEmailAgree());

			session.setAttribute("loginUser", sessionProfessor);

			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
	
	// 교수 비밀번호 확인
	@ResponseBody
	@RequestMapping("checkProfessorPwd.do")
	public String CheckProfessorPwd(Professor professor, Model model) 
	{
		Professor resultProfessor = mpService.checkProfPwd(professor);

		if(bcryptPasswordEncoder.matches(professor.getProfPwd(), resultProfessor.getProfPwd()))
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
	
	// 학생 비밀번호 변경
	@ResponseBody
	@RequestMapping("changeProfessorPwd.do")
	public String ChangeProfessorPwd(Professor professor, Model model) 
	{
		professor.setProfPwd(bcryptPasswordEncoder.encode(professor.getProfPwd()));

		int result = mpService.changeProfPwd(professor);

		if(result > 0) 
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
	
	// 교수 시간표 조회
	@ResponseBody
	@RequestMapping("professorSchedule.do")
	public ModelAndView ProfessorSchedule(ModelAndView mv, Model model, Lecture lecture, HttpSession session)
	{
		Professor professor = (Professor)session.getAttribute("loginUser");

		int profId = professor.getProfId();
		int classYear = lecture.getClassYear();
		int classSemester = lecture.getClassSemester();

		Map map = new HashMap();

		map.put("profId", profId);
		map.put("classYear", classYear);
		map.put("classSemester", classSemester);

		ArrayList<Lecture> schedule = mpService.selectProfSchdule(map);

		mv.addObject("schedule", schedule);

		mv.setViewName("myPage/professorSchedule");

		return mv;
	}
	
	// 상담 신청 승인
	@ResponseBody
	@RequestMapping("approveConsulting.do")
	public String ApproveConsulting(HttpSession session, Consulting consulting)
	{
		System.out.println(consulting);
				
		int result = mpService.approveConsulting(consulting);
		
		if(result > 0) 
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
	
	// 상담 신청 거절
	@ResponseBody
	@RequestMapping("rejectConsulting.do")
	public String RejectConsulting(HttpSession session, Consulting consulting)
	{
		System.out.println(consulting);
				
		int result = mpService.rejectConsulting(consulting);
		
		if(result > 0) 
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
	
	// 상담 완료
	@ResponseBody
	@RequestMapping("completeConsulting.do")
	public String CompleteConsulting(HttpSession session, Consulting consulting)
	{
		System.out.println(consulting);
		
		int result = mpService.completeConsulting(consulting);
		
		if(result > 0) 
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
	
	// 상담 신청 변경
	@ResponseBody
	@RequestMapping("changeConsulting.do")
	public String ChangeConsulting(HttpSession session, Consulting consulting)
	{
		System.out.println(consulting);
		
		int result = mpService.changeConsulting(consulting);
		
		if(result > 0) 
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}
}