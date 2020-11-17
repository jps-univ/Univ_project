package com.kh.univ.salary.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.salary.model.vo.Salary;

@Repository("saDao")
public class SalaryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 월급리스트
//	public ArrayList<Salary> selectList(int i) {
//
//		return (ArrayList)sqlSession.selectList("SalaryMapper.selectList", i);
//	}

	// 월급 하나 뽑아오기
	public Salary selectSalary(int salaryNo) {
		
		return sqlSession.selectOne("SalaryMapper.selectSalary", salaryNo);
	}


	public ArrayList<Salary> selectList(Salary sal) {
		
		return (ArrayList)sqlSession.selectList("SalaryMapper.selectList", sal);
	}

}
