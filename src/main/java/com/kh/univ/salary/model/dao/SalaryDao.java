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

	public ArrayList<Salary> selectList() {

		return (ArrayList)sqlSession.selectList("SalaryMapper.selectList");
	}

}
