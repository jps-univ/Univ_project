package com.kh.univ.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.kh.univ.admin.model.service.AdStudentService;
import com.kh.univ.member.model.vo.Student;

@Controller
public class AdStudentController {
	
	@Autowired
	private AdStudentService adStudentService;
	/**
	 * 1. 학생 정보 등록(관리자)
	 * @return
	 */
	@RequestMapping("student_Register.do")
	public String studentRegister() {
		return "admin/ad_student_register";
	}
	
	/**
	 * 2. 학생 정보 수정/조회(관리자)
	 * @return
	 */
	
	@RequestMapping("student_Modify.do")
    public ModelAndView StudentModify(ModelAndView mv) {
		ArrayList<Student> adStudentList = adStudentService.selectList();
		System.out.println(adStudentList);
		mv.addObject("adStudentList", adStudentList);
		mv.setViewName("admin/ad_student_modify");
		
        return mv;
    }
	
	@ResponseBody
	@RequestMapping(value="student_Modify_one.do",produces="text/plain;charset=UTF-8")
	public String StudentModifyOne(HttpServletResponse response, int stdId){
		System.out.println(stdId);
		Student adStudentOne = adStudentService.selectOne(stdId);
		
		JSONObject StudentOne = new JSONObject(); 
		StudentOne.put("stdId",adStudentOne.getStdId());
		StudentOne.put("stdName",adStudentOne.getStdName());
		StudentOne.put("stdBirth",adStudentOne.getStdBirth());
		StudentOne.put("stdCollege",adStudentOne.getStdCollege());
		StudentOne.put("stdDepartment",adStudentOne.getStdDepartment());
		StudentOne.put("stdCourse",adStudentOne.getStdCourse());
		StudentOne.put("stdSemester",adStudentOne.getStdSemester());
		StudentOne.put("stdSchoolReg",adStudentOne.getStdSchoolReg());
		StudentOne.put("stdEnterDiv",adStudentOne.getStdEnterDiv());
		StudentOne.put("stdPhone",adStudentOne.getStdPhone());
		StudentOne.put("stdTel",adStudentOne.getStdTel());
		StudentOne.put("stdEmail",adStudentOne.getStdEmail());
		StudentOne.put("stdBank",adStudentOne.getStdBank());
		StudentOne.put("stdAddress",adStudentOne.getStdAddress());
		StudentOne.put("stdAddressDetail",adStudentOne.getStdAddressDetail());
		StudentOne.put("stdAccountHolder",adStudentOne.getStdAccountHolder());
	
		
		
		
		
		System.out.println(StudentOne);
		return StudentOne.toJSONString();
	}
}
