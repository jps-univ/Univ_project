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

	@Override
	public ArrayList<Salary> selectList() {

		return saDao.selectList();
	}

}
