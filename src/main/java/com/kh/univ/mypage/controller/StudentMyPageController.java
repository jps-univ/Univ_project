package com.kh.univ.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.tools.DocumentationTool.Location;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.model.service.StudentMyPageService;
import com.kh.univ.register.model.vo.Register;

@Controller
public class StudentMyPageController 
{
	@Autowired
	private StudentMyPageService msService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	/*
	 * @RequestMapping("student_info.do") public String StudentInfo() { return
	 * "myPage/studentInfo"; }
	 */

	@RequestMapping("student_info.do")
	public ModelAndView StudentInfo(ModelAndView mv, Student student, HttpSession session) 
	{
		Student sessionStudent = (Student) session.getAttribute("loginUser");

		Student stdStatus = msService.selectStdStatus(sessionStudent);
		Student stdDepartment = msService.selectStdDepartment(sessionStudent);

		Register register = stdStatus.getRegister();
		Department department = stdDepartment.getDepartment();
		College college = stdDepartment.getCollege();

		mv.addObject("register", register);
		mv.addObject("department", department);
		mv.addObject("college", college);

		mv.setViewName("myPage/studentInfo");

		return mv;
	}

	@RequestMapping("student_password.do")
	public String StudentPassword() 
	{
		return "myPage/studentPassword";
	}

	@RequestMapping("student_schedule.do")
	public String StudentSchedule() 
	{
		return "myPage/studentSchedule";
	}

	/*
	 * @RequestMapping("student_consulting.do") public String StudentConsulting() {
	 * return "myPage/studentConsulting"; }
	 */

	// 상담 관리 페이지
	@RequestMapping("student_consulting.do")
	public ModelAndView StudentConsulting(ModelAndView mv, Professor professor, HttpSession session)
	{
		Student student = (Student) session.getAttribute("loginUser");

		ArrayList<Consulting> consult = msService.selectApply(student);

		mv.addObject("consult", consult);

		mv.setViewName("myPage/studentConsulting");

		return mv;
	}

	// 학생 개인정보 변경
	@ResponseBody
	@RequestMapping("changeStudentInfo.do")
	public String ChangeStudentInfo(Student student, Model model, HttpSession session) 
	{
		Student newStudent = (Student) session.getAttribute("loginUser");

		int result = msService.changeStdPersonalInfo(student);

		if(result > 0)
		{
			newStudent.setStdTel(student.getStdTel());
			newStudent.setStdPhone(student.getStdPhone());
			newStudent.setStdEmail(student.getStdEmail());
			newStudent.setStdAddress(student.getStdAddress());
			newStudent.setStdAddressDetail(student.getStdAddressDetail());
			newStudent.setStdBank(student.getStdBank());
			newStudent.setStdAccount(student.getStdAccount());
			newStudent.setStdAccountHolder(student.getStdAccountHolder());

			session.setAttribute("loginUser", newStudent);

			return "ok";
		} 
		else
		{
			return "fail";
		}
	}

	// 학생 개인정보 동의 변경
	@ResponseBody
	@RequestMapping("changeAgreeInfo.do")
	public String ChangeAgreeInfo(Student student, Model model, HttpSession session) 
	{
		Student sessionStudent = (Student) session.getAttribute("loginUser");

		int result = msService.changeStdAgreeInfo(student);

		if(result > 0) 
		{
			sessionStudent.setStdSmsAgree(student.getStdSmsAgree());
			sessionStudent.setStdEmailAgree(student.getStdEmailAgree());

			session.setAttribute("loginUser", sessionStudent);

			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}

	// 학생 비밀번호 확인
	@ResponseBody
	@RequestMapping("checkStudentPwd.do")
	public String CheckStudentPwd(Student student, Model model) 
	{
		Student resultStudent = msService.checkStdPwd(student);

		if(bcryptPasswordEncoder.matches(student.getStdPwd(), resultStudent.getStdPwd()))
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
	@RequestMapping("changeStudentPwd.do")
	public String ChangeStudentPwd(Student student, Model model) 
	{
		student.setStdPwd(bcryptPasswordEncoder.encode(student.getStdPwd()));

		int result = msService.changeStdPassword(student);

		if(result > 0) 
		{
			return "ok";
		} 
		else 
		{
			return "fail";
		}
	}

	// 학생 시간표 조회
	@ResponseBody
	@RequestMapping("studentSchedule.do")
	public ModelAndView StudentSchedule(ModelAndView mv, Model model, Lecture lecture, HttpSession session)
	{
		Student student = (Student) session.getAttribute("loginUser");

		int stdId = student.getStdId();
		int classYear = lecture.getClassYear();
		int classSemester = lecture.getClassSemester();

		Map map = new HashMap();

		map.put("stdId", stdId);
		map.put("classYear", classYear);
		map.put("classSemester", classSemester);

		ArrayList<Lecture> schedule = msService.selectStdSchdule(map);

		mv.addObject("schedule", schedule);

		mv.setViewName("myPage/studentSchedule");

		return mv;
	}

	// 교수 조회
	/*
	@ResponseBody
	@RequestMapping("selectProfessor.do")
	public ModelAndView SelectProfessor(ModelAndView mv, Professor professor, Department department)
	{
		String profName = professor.getProfName();
		String profCollege = professor.getProfCollege();
		String departmentName = department.getDepartmentName();

		Map map = new HashMap();

		map.put("profName", profName);
		map.put("profCollege", profCollege);
		map.put("departmentName", departmentName);

		ArrayList<Professor> selectProf = msService.selectProfessor(map);

		mv.addObject("selectProf", selectProf);

		mv.setViewName("myPage/studentConsulting");

		return mv;
	}
	*/
	
	@ResponseBody
	@RequestMapping(value="selectProfessor.do", produces="application/json; charset=UTF-8")
	public String SelectProfessor(ModelAndView mv, Professor professor, Department department) throws JsonProcessingException
	{
		ObjectMapper mapper = new ObjectMapper();
		
		String profName = professor.getProfName();
		String profCollege = professor.getProfCollege();
		String departmentName = department.getDepartmentName();

		Map map = new HashMap();
		
		map.put("profName", profName);
		map.put("profCollege", profCollege);
		map.put("departmentName", departmentName);
		
		ArrayList<Professor> selectProf = msService.selectProfessor(map);
		
		String jsonStr = mapper.writeValueAsString(selectProf);
		
		return jsonStr;
	}

	// 상담 신청
	@ResponseBody
	@RequestMapping("applyConsulting.do")
	public String ApplyConsulting(HttpSession session, Professor professor) 
	{
		Student student = (Student) session.getAttribute("loginUser");

		int stdId = student.getStdId();
		int profId = professor.getProfId();

		Map map = new HashMap();

		map.put("stdId", stdId);
		map.put("profId", profId);

		int result = msService.applyConsulting(map);

		if (result > 0) 
		{
			return "ok";
		}
		else
		{
			return "fail";
		}
	}
	
	// 상담 신청 취소
	@ResponseBody
	@RequestMapping("cancleConsulting.do")
	public String CancleConsulting(HttpSession session, Consulting consulting)
	{
		System.out.println(consulting);
				
		int result = msService.cancleConsulting(consulting);
		
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