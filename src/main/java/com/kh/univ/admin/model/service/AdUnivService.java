package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import com.kh.univ.admin.model.vo.AdLeave;

public interface AdUnivService {

	ArrayList<AdLeave> adLeaveList();

	int adLeaveUpdate(String string);

	ArrayList<AdLeave> adReturnList();

	int adReturnUpdate(String string);

	ArrayList<AdLeave> adGraduateSelect();

	int adgraduateUpdate(String string);

	
	// 아무거나ㅠㅠㅠ아무거

	
}
