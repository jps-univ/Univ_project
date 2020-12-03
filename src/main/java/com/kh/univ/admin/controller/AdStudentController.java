package com.kh.univ.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdStudentService;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Student;

@Controller
public class AdStudentController {
	
	@Autowired
	private AdStudentService adStudentService;
	
	@Autowired
	 private BCryptPasswordEncoder bcryptPasswordEncoder;
	/**
	 * 1. 학생 정보 등록(관리자)
	 * @return
	 */
	@RequestMapping("student_Register.do")
	public ModelAndView studentRegister(ModelAndView mv) {
		
		ArrayList<College>  adDept = adStudentService.selectDept();
		mv.addObject("adDept",adDept);
		mv.setViewName("admin/ad_student_register");

		return mv;
	}
	
	
	@RequestMapping(value="studnet_One_Register.do")
	public String studentOneRegister(Student std) {
		System.out.println("비밀번호 암호화 전:"+std.getStdPwd());
		
		bcryptPasswordEncoder = new BCryptPasswordEncoder();
		System.out.println(std);
		String password = std.getStdPwd();
		std.setStdPwd(bcryptPasswordEncoder.encode(password));
		System.out.println("비밀번호 암호화 후:"+std.getStdPwd());
		int register =adStudentService.insertStudent(std);
		
		if(register>0) {
			return "redirect:student_Register.do";
		}else {
			return"common/errorPage";
		}
		
	}
	

	
	
	/**
	 * 2. 학생 정보 수정/조회(관리자)
	 * @param mv
	 * @return
	 */
	@RequestMapping("student_Modify.do")
    public ModelAndView StudentModify(ModelAndView mv) {
		ArrayList<?>  adStudentList = adStudentService.selectList();
		ArrayList<College>  adDept = adStudentService.selectDept();
		mv.addObject("adStudentList", adStudentList);
		mv.addObject("adDept",adDept);
		mv.setViewName("admin/ad_student_modify");
		
		
        return mv;
    }
	
	/**
	 * 2_2. 학생 한명 정보 조회 하기 (Ajax)
	 * @param response
	 * @param stdId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="student_Modify_one.do",produces="application/json;charset=UTF-8")
	public Student StudentModifyOne(int stdId){
		Student adStudentOne = adStudentService.selectOne(stdId);
		
//		JSONObject StudentOne = new JSONObject();
//		
//		StudentOne.put("stdId",adStudentOne.getStdId());
//		StudentOne.put("stdName",adStudentOne.getStdName());
//		StudentOne.put("stdBirth",adStudentOne.getStdBirth());
//		StudentOne.put("stdCollege",adStudentOne.getStdCollege());
//		StudentOne.put("stdDepartment",adStudentOne.getStdDepartment());
//		StudentOne.put("stdCourse",adStudentOne.getStdCourse());
//		StudentOne.put("stdSemester",adStudentOne.getStdSemester());
//		StudentOne.put("stdSchoolReg",adStudentOne.getStdSchoolReg());
//		StudentOne.put("stdEnterDiv",adStudentOne.getStdEnterDiv());
//		StudentOne.put("stdPhone",adStudentOne.getStdPhone());
//		StudentOne.put("stdTel",adStudentOne.getStdTel());
//		StudentOne.put("stdEmail",adStudentOne.getStdEmail());
//		StudentOne.put("stdBank",adStudentOne.getStdBank());
//		StudentOne.put("stdAddress",adStudentOne.getStdAddress());
//		StudentOne.put("stdAddressDetail",adStudentOne.getStdAddressDetail());
//		StudentOne.put("stdAccount",adStudentOne.getStdAccount());
//		StudentOne.put("stdAccountHolder",adStudentOne.getStdAccountHolder());
		
		if(adStudentOne.getRegister().getStdStatus()==null) {
			
			adStudentOne.getRegister().setStdStatus("재학");
		}
		System.out.println(adStudentOne.getStdSemester());
		int stdSem = (adStudentOne.getStdSemester()+1)/2;
		adStudentOne.setStdSemester(stdSem);
		System.out.println(String.valueOf(stdSem));
		//String stdSem = (adStudentOne.getStdSemester()+1)/2 + "";
	
//		return StudentOne.toJSONString();
		
		return adStudentOne;
	}
	
	/**
	 * 2_3. 학생 정보 수정
	 * @param std
	 * @return
	 */
	@RequestMapping(value="student_Modify_Update.do")
	public String StudentModifyUpdate(Student std) {
		System.out.println(std);
		
		int result = adStudentService.selectOneUpdate(std);
		
		if(result >0) {
			return "redirect:student_Modify.do";
		}else {
			return "common/errorPage";
		}
	}
	
	/**
	 * 2_4. 학생 정보 수정 중 select 태그 학과 값 가져오기
	 * @param dept
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="student_Modify_DeptCheck.do",produces="application/json;charset=UTF-8")
	public ArrayList<Department> StudentDeptCheck(String collegeCode) {
		ArrayList<Department> deptCheck = adStudentService.deptCheck(collegeCode);
		
		
		return deptCheck;
		
	}
	
	
	@ResponseBody
	@RequestMapping("ad_student_search.do")
	public ArrayList<Student> studentSearch(String searchDepartment, String searchSemester){
		System.out.println(searchDepartment);
		System.out.println(searchSemester);
		Map map = new HashMap();
		map.put("searchDepartment", searchDepartment);
		map.put("searchSemester", searchSemester);
		
		ArrayList<Student> searchStd = adStudentService.searchStd(map);
		System.out.println(searchStd);
		return searchStd;
	}
}
