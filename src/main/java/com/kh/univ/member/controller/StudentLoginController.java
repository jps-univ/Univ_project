package com.kh.univ.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.univ.member.model.service.StudentLoginSevice;
import com.kh.univ.member.model.vo.Student;
import com.sun.org.apache.bcel.internal.generic.RETURN;

@Controller
public class StudentLoginController {

	@Autowired
	private StudentLoginSevice studentService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	// 로그인
	@PostMapping("studentLogin.do")
	public String login(HttpSession session ,Student student, Model model) {
		
		Student loginStudent = studentService.login(student);
		
		if(bcryptPasswordEncoder.matches(student.getStdPwd(), loginStudent.getStdPwd())) {
			loginStudent.setStdPwd("");
			session.setAttribute("loginUser", loginStudent);
			System.out.println(loginStudent.getStdName());
			if(loginStudent.getStdName().equals("관리자")) {
				System.out.println("admin login");
				return "redirect:student_Register.do";
			}else {
				return "redirect:goMain.do";
				
			}
		} else {
			model.addAttribute("msg", "로그인실패!");
			return "common/errorPage";
		}
	}
	
	// 로그아웃
	@RequestMapping("studentLogout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:home.do";
	}
	
	//비밀번호 암호화용 테스트 메서드
	@GetMapping("pwdCheck.do")
	public String pwdCheck(HttpSession session) {
		String userId = "testUser";
		String userPwd = "1";
		bcryptPasswordEncoder = new BCryptPasswordEncoder();
		System.out.println("bcryptPasswordEncoder : " + bcryptPasswordEncoder);
		System.out.println(bcryptPasswordEncoder.encode(userPwd));
		return bcryptPasswordEncoder.encode(userPwd);
	}
	
	// 아이디 찾기
	// 이름 이메일 받아서 아이디 찾기
	@ResponseBody
	@RequestMapping("findId.do")
	public HashMap<String, Object> findId(HttpSession session, Student student) {
		
		Student findStudent = studentService.findByNameAndEmail(student);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		if (findStudent != null) {
			System.out.println("findStudent : " + findStudent);
			map.put("stdID", findStudent.getStdId());
			map.put("result", HttpStatus.OK);
		} else {
			map.put("result","FAIL");
		}
		return map;
	}
}