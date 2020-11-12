package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.AdProfessorDao;
import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Professor;

@Service("AdProfessorService")
public class AdProfessorServiceImpl implements AdProfessorService{
	
	@Autowired 
	private AdProfessorDao adprofessorDao;

	@Override
	public ArrayList<Professor> selectList() {
		// TODO Auto-generated method stub
		return adprofessorDao.selectList();
	}

	@Override
	public Professor selectOne(int profId) {
		// TODO Auto-generated method stub
		return adprofessorDao.selectOne(profId);
	}

	@Override
	public ArrayList<College> selectDept() {
		// TODO Auto-generated method stub
		return adprofessorDao.selectDept();
	}

	@Override
	public ArrayList<Department> deptCheck(String collegeCode) {
		// TODO Auto-generated method stub
		return adprofessorDao.deptCheck(collegeCode);
	}

	@Override
	public int updateOne(Professor pro) {
		// TODO Auto-generated method stub
		return adprofessorDao.updateOne(pro);
	}

	@Override
	public int insertProfessor(Professor pro) {
		// TODO Auto-generated method stub
		return adprofessorDao.insertProfessor(pro);
	}


	

}
