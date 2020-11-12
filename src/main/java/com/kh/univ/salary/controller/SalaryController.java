package com.kh.univ.salary.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.salary.model.service.SalaryService;
import com.kh.univ.salary.model.vo.Salary;

@Controller
public class SalaryController {
	
	@Autowired
	private SalaryService saService;
	
	// 교수월급페이지
	@RequestMapping("salary.do")
    public ModelAndView Salary(HttpSession session,ModelAndView mv){
		
		Professor newSalary = (Professor)session.getAttribute("loginUser");
		int id = newSalary.getProfId();
		
		ArrayList<Salary>list = saService.selectList(newSalary.getProfId());
		
		mv.addObject("list", list);
		mv.addObject("id",id);
		mv.setViewName("salary/salary");
		
        return mv;
    }
	
	// 인쇄하기 클릭 시 하나의 정보 가져오기
	@RequestMapping("salarydetail.do")
    public ModelAndView Salarydetail(int salaryNo, HttpSession session, ModelAndView mv){
		
		Professor newSalary = (Professor)session.getAttribute("loginUser");
		Salary salary = saService.selectSalary(salaryNo);
		
		mv.addObject("s", salary);
		mv.setViewName("salary/salary_detail");
		
        return mv;
    }

}
