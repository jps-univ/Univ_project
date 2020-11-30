package com.kh.univ.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdProfessorService;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Professor;

import oracle.net.aso.b;

@Controller
public class AdProfessorController {

	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private AdProfessorService adProfessorService;
	/**
	 * 1.교수 정보 등록(관리자)
	 * @return
	 */
	@RequestMapping("professor_Register.do")
	public ModelAndView professorRegister(ModelAndView mv,HttpSession session) {
		ArrayList<College> adDept = adProfessorService.selectDept();
		mv.addObject("adDept",adDept);
		mv.setViewName("admin/ad_professor_register");
		return mv;
	}
	
	/**
	 * 1_2 교수 정보 INSERT
	 * @param pro
	 * @return
	 */
	@RequestMapping("professor_Register_Insert.do")
	public String professorRegisterInsert(Professor pro) {
		System.out.println(pro);
		String password = pro.getProfPwd();
		bcryptPasswordEncoder = new BCryptPasswordEncoder();
		pro.setProfPwd(bcryptPasswordEncoder.encode(password));
		
		int result = adProfessorService.insertProfessor(pro);
		
		if(result>0) {
			return "redirect:professor_Register.do";
		}else {
			return "common/errorPage";
		}
		
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
	
	/**
	 * 2_2. 교수 한명 UPDATE
	 * @param pro
	 * @return
	 */
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
	
	/**
	 * 2_3. 교수 한명 정보 SELECT
	 * 
	 * @param profId
	 * @return
	 */
	@ResponseBody
	@RequestMapping("professor_Modify_one.do")
	public Professor professorModifyOne(int profId){
		Professor selectOne = adProfessorService.selectOne(profId);
		
		return selectOne;
	}
	
	/**
	 * 2_4. 교수 담당 학과 SELECT
	 * @param collegeCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="professor_Modify_DeptCheck.do",produces="application/json;charset=UTF-8")
	public ArrayList<Department> professorDeptCheck(String collegeCode){
		ArrayList<Department> deptCheck = adProfessorService.deptCheck(collegeCode);
		
		return deptCheck;
	}
	
	
}
