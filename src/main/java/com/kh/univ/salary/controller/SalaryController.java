package com.kh.univ.salary.controller;

import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		String schoolYear =Integer.toString(year);
		Professor newSalary = (Professor)session.getAttribute("loginUser");
		Salary sal = new Salary();
		int id = newSalary.getProfId();
		
			sal.setProfId(newSalary.getProfId());
			sal.setSchoolYear(schoolYear);
			ArrayList<Salary>list = saService.selectList(sal);
			mv.addObject("list", list);
			mv.addObject("id",id);
			mv.setViewName("salary/salary");
			
			return mv;

    }
	
	// 에이작스,,,
	@ResponseBody
	@RequestMapping("salary_Year.do")
	public ArrayList<Salary> salaryYear(String schoolYear,HttpSession session){
		System.out.println(schoolYear);
		Professor newSalary = (Professor)session.getAttribute("loginUser");
		
		Salary salYear = new Salary();
		salYear.setProfId(newSalary.getProfId());
		salYear.setSchoolYear(schoolYear);
		ArrayList<Salary>list = saService.selectList(salYear);

		return list;
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
