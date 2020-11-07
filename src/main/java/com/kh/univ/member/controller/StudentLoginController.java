package com.kh.univ.member.controller;

import java.util.HashMap;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.univ.member.model.service.StudentLoginSevice;
import com.kh.univ.member.model.vo.Student;

@Controller
public class StudentLoginController {

	@Autowired
	private StudentLoginSevice studentService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	@Qualifier("mailSender")
	private JavaMailSender javaMailSender;
	
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
	
	// 비밀번호 찾기
	@ResponseBody
	@RequestMapping("findPwd.do")
	public HashMap<String, Object> findPwd(HttpSession session, Student student) {
		
		Student findStudent = studentService.findByIdAndNameAndEmail(student);
		HashMap<String, Object> map = new HashMap<String, Object>();
			
		if (findStudent != null) {
			System.out.println("findStudent : " + findStudent);
			try {
				String tempPwd = setTempPwd(findStudent);
				
				//임시 비밀번호 검증
				if(!"".equals(tempPwd)) {
					findStudent.setStdPwd(tempPwd);
					
					//메일 전송
					if(sendMail(findStudent)) {
						map.put("result", HttpStatus.OK);
						map.put("msg","성공");
					} else {
						map.put("result","FAIL");
						map.put("msg","메일 전송에 실패하였습니다.");
					}
				}
			} catch (Exception e) {
				map.put("result","FAIL");
				map.put("msg","시스템 문제가 발생하였습니다. 관리자에게 문의하세요");
			}
		} else {
			map.put("result","FAIL");
			map.put("msg","학생정보를 찾을 수 없습니다.");
		}
		return map;
	}
	
	//임시비밀번호 발번 및 업데이트
	private String setTempPwd(Student student) throws Exception {
		String pwdSet = UUID.randomUUID().toString().replaceAll("-", "");
		String tempPwd = pwdSet.substring(0,9); //임시 비밀번호
		
		String tempCryptPwd = bcryptPasswordEncoder.encode(tempPwd); 
		student.setStdPwd(tempCryptPwd);
		int updateCnt = studentService.updateById(student);
		
		if(updateCnt > 0) {
			student.setStdPwd(tempPwd);
		}
		return (updateCnt > 0) ? tempPwd : "";
	}
	
	//임시 비밀번호 메일 전송
	private boolean sendMail(Student student) throws Exception {
		
		boolean isMailSend = false;
		
		try { 
			MimeMessagePreparator preparator = new MimeMessagePreparator() {
				
				@Override
				public void prepare(MimeMessage mimeMessage) throws Exception {
					MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					
					messageHelper.setTo(student.getStdEmail()); //받는 사람 student.getStdEmail();
					messageHelper.setFrom("uni961130@gmail.com"); //보내는 사람
					messageHelper.setSubject("비밀번호 변경 내역 - 진포상대학교");
					
					StringBuilder sb = new StringBuilder();
					
					sb.append("To. : " + student.getStdName() + "\n");
					sb.append("\n");
					sb.append("\n");
					sb.append("변경된 임시 비밀번호 : " + student.getStdPwd() + "\n");
					sb.append("위 비밀번호로 로그인 후 마이페이지에서 비밀번호를 변경해주세요.");
					
					messageHelper.setText(sb.toString());
				};
			};
			javaMailSender.send(preparator); //메일 전송
			isMailSend = true;
		} catch (Exception e) {
			e.printStackTrace();
			isMailSend = false;
			throw e;
		}
		
		return isMailSend;
	}
}