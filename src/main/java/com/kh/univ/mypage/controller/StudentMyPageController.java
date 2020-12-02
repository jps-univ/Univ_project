package com.kh.univ.mypage.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Image;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.mypage.model.service.StudentMyPageService;
import com.kh.univ.register.model.vo.Register;

import oracle.net.aso.i;

@Controller
public class StudentMyPageController 
{
	@Autowired
	private StudentMyPageService msService;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	// 학생 개인정보 페이지
	@RequestMapping("student_info.do")
	public ModelAndView StudentInfo(ModelAndView mv, Student student, HttpSession session) 
	{
		Student sessionStudent = (Student)session.getAttribute("loginUser");

		Student stdStatus = msService.selectStdStatus(sessionStudent);
		Student stdDepartment = msService.selectStdDepartment(sessionStudent);
		ArrayList<Image> stdImage = msService.selectStdImage(sessionStudent);

		Register register = stdStatus.getRegister();
		Department department = stdDepartment.getDepartment();
		College college = stdDepartment.getCollege();
		Image image;
		
		if(stdImage.isEmpty())
		{
			image = null;
		}
		else
		{
			image = stdImage.get(stdImage.size() - 1);
		}
		
		mv.addObject("register", register);
		mv.addObject("department", department);
		mv.addObject("college", college);
		mv.addObject("image", image);

		mv.setViewName("myPage/studentInfo");

		return mv;
	}

	// 학생 비밀번호 변경 페이지
	@RequestMapping("student_password.do")
	public String StudentPassword() 
	{
		return "myPage/studentPassword";
	}

	// 학생 전체 시간표 페이지
	@RequestMapping("student_schedule.do")
	public String StudentSchedule() 
	{
		return "myPage/studentSchedule";
	}

	// 학생 상담 신청 페이지
	@RequestMapping("student_consulting.do")
	public ModelAndView StudentConsulting(ModelAndView mv, Professor professor, HttpSession session)
	{
		Student student = (Student)session.getAttribute("loginUser");
		
		ArrayList<Consulting> consult = msService.selectApply(student);
		
		mv.addObject("consult", consult);
		
		mv.setViewName("myPage/studentConsulting");
		/* mv.setViewName("myPage/studentConsulting2"); */
		
		return mv;
	}

	// 학생 개인정보 변경
	@ResponseBody
	@RequestMapping("changeStudentInfo.do")
	public String ChangeStudentInfo(Student student, Model model, HttpSession session) 
	{
		Student newStudent = (Student)session.getAttribute("loginUser");

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
	@RequestMapping("changeStdAgreeInfo.do")
	public String ChangeStdAgreeInfo(Student student, Model model, HttpSession session) 
	{
		Student sessionStudent = (Student)session.getAttribute("loginUser");

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
		Student student = (Student)session.getAttribute("loginUser");

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
	
	/*
	// 교수 조회 페이징 처리
	@ResponseBody
	@RequestMapping(value="selectProfessor.do", produces="application/json; charset=UTF-8")
	public String SelectProfessor(ModelAndView mv, Professor professor, Department department) throws JsonProcessingException
	{
		ObjectMapper mapper = new ObjectMapper();

		String profName = professor.getProfName();
		String profCollege = professor.getProfCollege();
		String departmentName = department.getDepartmentName();

		int currentPage = 1;
		Map map = new HashMap();
		
		map.put("profName", profName);
		map.put("profCollege", profCollege);
		map.put("departmentName", departmentName);
		
		ArrayList<Professor> selectProf = msService.selectProfessor(map);

		// 페이징
		int profCount = msService.getProfCount(map);
		PageInfo pi = Pagination.getPageInfo(currentPage, profCount);
				
		ArrayList<Professor> list = msService.selectProfessor2(pi);
		
		String jsonStr = mapper.writeValueAsString(selectProf);
		
		return jsonStr;
	}
	*/
	

	// 상담 신청
	@ResponseBody
	@RequestMapping("applyConsulting.do")
	public String ApplyConsulting(HttpSession session, Professor professor) 
	{
		Student student = (Student)session.getAttribute("loginUser");

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
	
	@RequestMapping("insertStdImage.do")
	public String insettImage(HttpSession session, HttpServletRequest request, Image i, @RequestParam(name="uploadImage", required=false) MultipartFile file)
	{
		Student student = (Student)session.getAttribute("loginUser");
		String stdId = Integer.toString(student.getStdId());
		
		if(!file.getOriginalFilename().equals(""))
		{
			// 서버에 업로드 진행
			// saveFile 메소드 : 저장하고자 하는 file과 request를 전달해서 서버에 업로드시키고 저장된 파일명을 반환해주는 메소드
			String renameFileName = saveFile(stdId, file, request);
			
			// 파일이 잘 저장된 경우
			if(renameFileName != null)
			{
				i.setStdId(student.getStdId());
				i.setOriginalImageName(file.getOriginalFilename());
				i.setRenameImageName(renameFileName);
			}
		}
		
		System.out.println(i);
		int result = msService.insertStdImage(i);
		
		if(result > 0)
		{
			return "redirect:student_info.do";
		}
		else
		{
			return "common/errorPage";
		}
	}
	
	public String saveFile(String stdId, MultipartFile file, HttpServletRequest reqeust)
	{
		// 파일이 저장된 경로를 설정하자
		// 웹 서버 contextPath를 불러와서 폴더의 경로를 가져온다.(webapp하위의 resources)
		// D:\spring\workspace1\springProject\src\main\webapp\resources
		String root = reqeust.getSession().getServletContext().getRealPath("resources");
		
		// root 하위의 buploadFiles 폴더를 연결
		// \를 문자로 인식하기 위해서는 \\를 사용한다.
		// D:\spring\workspace1\springProject\src\main\webapp\resources\buploadFiles
		String savePath = root + "\\uploadStdImage";
		
		File folder = new File(savePath);		// savePath의 폴더를 불러온다.
		
		if(!folder.exists())
		{
			// 폴더가 없으면 만들어라.
			folder.mkdirs();
		}
		
		// 원본 파일명을 년월시분초.파일확장자명으로 변경
		String originalFileName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		// 20200929191535.png
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
		
		String renamePath = folder + "\\" + stdId + "_" + renameFileName;		// 실제 저장될 파일 경로 + 파일명
		
		try
		{
			file.transferTo(new File(renamePath)); 				// 전달받은 file이 rename명으로 이때 서버에 저장된다.
		}
		catch(Exception e)
		{
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
		return renameFileName;
	}
}