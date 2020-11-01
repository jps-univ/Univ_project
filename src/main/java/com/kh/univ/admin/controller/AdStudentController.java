package com.kh.univ.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
}
