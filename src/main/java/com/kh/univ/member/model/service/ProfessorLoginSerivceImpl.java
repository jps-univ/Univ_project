package com.kh.univ.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.member.model.dao.ProfessorLoginDao;
import com.kh.univ.member.model.vo.Professor;

@Service
public class ProfessorLoginSerivceImpl implements ProfessorLoginSevice
{
	@Autowired
	ProfessorLoginDao plDao;
	
	@Override
	public Professor login(Professor professor) 
	{
		return plDao.login(professor);
	} 

	@Override
	public Professor findByNameAndEmail(Professor professor) 
	{
		return plDao.findByNameAndEmail(professor);
	}

	@Override
	public Professor findByIdAndNameAndEmail(Professor professor) 
	{
		return plDao.findByIdAndNameAndEmail(professor);
	}

	@Override
	public int updateById(Professor professor) 
	{
		return plDao.updateById(professor);
	}
}