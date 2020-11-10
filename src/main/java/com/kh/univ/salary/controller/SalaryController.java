package com.kh.univ.salary.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.salary.model.service.SalaryService;
import com.kh.univ.salary.model.vo.Salary;

@Controller
public class SalaryController {
	
	@Autowired
	private SalaryService saService;
	
	// 교수월급페이지
	@RequestMapping("salary.do")
    public ModelAndView Salary(ModelAndView mv){
		
		ArrayList<Salary>list = saService.selectList();
		
		mv.addObject("list", list);
		mv.setViewName("salary/salary");
		
        return mv;
    }
	
	@RequestMapping("salarydetail.do")
    public String Salarydetail()
	{
        return "salary/salary_detail";
    }

}
