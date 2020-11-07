package com.kh.univ.member.model.service;

import java.util.List;

import com.kh.univ.member.model.vo.Student;

public interface StudentLoginSevice {

	Student login(Student student);

	Student findByNameAndEmail(Student student);

	Student findByIdAndNameAndEmail(Student student);

	int updateById(Student student);

}
