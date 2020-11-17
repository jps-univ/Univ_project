package com.kh.univ.salary.model.service;

import java.util.ArrayList;

import com.kh.univ.salary.model.vo.Salary;

public interface SalaryService {

	// 월급리스트
//	ArrayList<Salary> selectList(int i);

	// 월급 하나 뽑아오기
	Salary selectSalary(int salaryNo);

//	ArrayList<Salary> selectList(int profId, int year);

	ArrayList<Salary> selectList(Salary sal);

}
