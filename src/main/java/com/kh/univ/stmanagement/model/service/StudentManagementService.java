package com.kh.univ.stmanagement.model.service;

import java.util.ArrayList;

import com.kh.univ.stmanagement.model.vo.StudentManagement;

public interface StudentManagementService {

	ArrayList<StudentManagement> selectList();

	ArrayList<StudentManagement> selectDetailList();

}
