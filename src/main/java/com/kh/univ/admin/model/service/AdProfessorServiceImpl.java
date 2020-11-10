package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.AdProfessorDao;
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

}
