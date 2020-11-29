package com.kh.univ.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.admin.model.vo.AdLeave;

@Repository("adUnivDao")
public class AdUnivDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<AdLeave> adLeaveList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminUnivmapper.UnivLeaveList");
	}

	public int adLeaveUpdate(String string) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminUnivmapper.UnivLeaveUpdate",string);
	}

	public ArrayList<AdLeave> adReturnList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminUnivmapper.UnivReturnList");
	}

	public int adReturnUpdate(String string) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminUnivmapper.UnivReturnUpdate",string);
	}

	public ArrayList<AdLeave> adGraduateSelect() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminUnivmapper.adGraduateSelect");
	}
	
	// 아무거나ㅠㅠㅠ아무거
}
