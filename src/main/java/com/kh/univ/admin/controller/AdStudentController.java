package com.kh.univ.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
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
import com.kh.univ.member.model.vo.College;
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
	 * @param mv
	 * @return
	 */
	@RequestMapping("student_Modify.do")
    public ModelAndView StudentModify(ModelAndView mv) {
		ArrayList<?>  adStudentList = adStudentService.selectList();
		System.out.println(adStudentList);
		mv.addObject("adStudentList", adStudentList);
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
	public String StudentModifyOne(int stdId){
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
		StudentOne.put("stdAccount",adStudentOne.getStdAccount());
		StudentOne.put("stdAccountHolder",adStudentOne.getStdAccountHolder());
	
		return StudentOne.toJSONString();
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
}
