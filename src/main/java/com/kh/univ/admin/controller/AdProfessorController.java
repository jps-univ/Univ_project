package com.kh.univ.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdProfessorService;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Professor;

@Controller
public class AdProfessorController {

	@Autowired
	private AdProfessorService adProfessorService;
	/**
	 * 1.교수 정보 등록(관리자)
	 * @return
	 */
	@RequestMapping("professor_Register.do")
	public String professorRegister(ModelAndView mv) {

		
		
		return "admin/ad_professor_register";
	}
	
	/**
	 * 2. 교수 정보 수정(관리자)
	 * @return
	 */
	@RequestMapping("professor_Modify.do")
	public ModelAndView professorModify(ModelAndView mv) {
		ArrayList<Professor> adProfessorList = adProfessorService.selectList();
		ArrayList<College> adDept = adProfessorService.selectDept();
		mv.addObject("adProfessorList",adProfessorList);
		mv.addObject("adDept",adDept);
		mv.setViewName("admin/ad_professor_modify");
		return mv;
	}
	@RequestMapping("professor_Modify_Update.do")
	public String professorModifyUpdate(Professor pro) {
		System.out.println(pro);
		int result = adProfessorService.updateOne(pro);
			
		if(result>0) {
			return "redirect:professor_Modify.do";
		}else {
			return "common/error";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("professor_Modify_one.do")
	public Professor professorModifyOne(int profId){
		Professor selectOne = adProfessorService.selectOne(profId);
		
		return selectOne;
	}
	
	@ResponseBody
	@RequestMapping(value="professor_Modify_DeptCheck.do",produces="application/json;charset=UTF-8")
	public ArrayList<Department> professorDeptCheck(String collegeCode){
		ArrayList<Department> deptCheck = adProfessorService.deptCheck(collegeCode);
		
		return deptCheck;
	}
	
	
}
