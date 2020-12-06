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

import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Image;
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
	
	// 교수 개인정보 페이지
	@RequestMapping("professor_info.do")
    public ModelAndView ProfessorInfo(ModelAndView mv, Professor professor, HttpSession session)
	{
		Professor sessioProfessor = (Professor)session.getAttribute("loginUser");

		Professor profDepartment = mpService.selectProfDepartment(sessioProfessor);
		ArrayList<Image> profImage = mpService.selectProfImage(sessioProfessor);

		String departmentName = profDepartment.getDepartmentName();
		String collegeCode = profDepartment.getCollegeCode();
		String collegeName = profDepartment.getCollegeName();
		Image image;
		
		if(profImage.isEmpty())
		{
			image = null;
		}
		else
		{
			image = profImage.get(profImage.size() - 1);
		}

		mv.addObject("department", departmentName);
		mv.addObject("college", collegeCode);
		mv.addObject("college", collegeName);
		mv.addObject("image", image);

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
	
	@RequestMapping("insertProfImage.do")
	public String insettImage(HttpSession session, HttpServletRequest request, Image i, @RequestParam(name="uploadImage", required=false) MultipartFile file)
	{
		Professor professor = (Professor)session.getAttribute("loginUser");
		String profId = Integer.toString(professor.getProfId());
		
		if(!file.getOriginalFilename().equals(""))
		{
			// 서버에 업로드 진행
			// saveFile 메소드 : 저장하고자 하는 file과 request를 전달해서 서버에 업로드시키고 저장된 파일명을 반환해주는 메소드
			String renameFileName = saveFile(profId, file, request);
			
			// 파일이 잘 저장된 경우
			if(renameFileName != null)
			{
				i.setProfId(professor.getProfId());
				i.setOriginalImageName(file.getOriginalFilename());
				i.setRenameImageName(renameFileName);
			}
		}
		
		System.out.println(i);
		int result = mpService.insertProfImage(i);
		
		if(result > 0)
		{
			return "redirect:professor_info.do";
		}
		else
		{
			return "common/errorPage";
		}
	}
	
	public String saveFile(String profId, MultipartFile file, HttpServletRequest reqeust)
	{
		// 파일이 저장된 경로를 설정하자
		// 웹 서버 contextPath를 불러와서 폴더의 경로를 가져온다.(webapp하위의 resources)
		// D:\spring\workspace1\springProject\src\main\webapp\resources
		String root = reqeust.getSession().getServletContext().getRealPath("resources");
		
		// root 하위의 buploadFiles 폴더를 연결
		// \를 문자로 인식하기 위해서는 \\를 사용한다.
		// D:\spring\workspace1\springProject\src\main\webapp\resources\buploadFiles
		String savePath = root + "\\uploadProfImage";
		
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
		
		String renamePath = folder + "\\" + profId + "_" + renameFileName;		// 실제 저장될 파일 경로 + 파일명
		
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