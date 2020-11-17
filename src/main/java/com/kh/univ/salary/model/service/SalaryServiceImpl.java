package com.kh.univ.salary.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.salary.model.dao.SalaryDao;
import com.kh.univ.salary.model.vo.Salary;

@Service("saService")
public class SalaryServiceImpl implements SalaryService{
	
	@Autowired
	private SalaryDao saDao;

	// 월급리스트
//	@Override
//	public ArrayList<Salary> selectList(int i) {
//		
//		return saDao.selectList(i);
//	}

	// 월급 하나 뽑아오기
	@Override
	public Salary selectSalary(int salaryNo) {
		
		return saDao.selectSalary(salaryNo);
	}

	@Override
	public ArrayList<Salary> selectList(Salary sal) {
		
		return saDao.selectList(sal);
	}


}
