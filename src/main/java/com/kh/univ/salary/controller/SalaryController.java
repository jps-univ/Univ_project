package com.kh.univ.salary.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SalaryController {
	
	@RequestMapping("salary.do")
    public String Payment()
	{
        return "salary/salary";
    }
	
	@RequestMapping("salarydetail.do")
    public String Paymentdetail()
	{
        return "salary/salarydetail";
    }

}
