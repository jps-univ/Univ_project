package com.kh.univ.member.model.service;

import com.kh.univ.member.model.vo.Professor;

public interface ProfessorLoginSevice 
{
	Professor login(Professor professor);

	Professor findByNameAndEmail(Professor professor);

	Professor findByIdAndNameAndEmail(Professor professor);

	int updateById(Professor student);
}