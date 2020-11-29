package com.kh.univ.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.admin.model.dao.AdUnivDao;
import com.kh.univ.admin.model.vo.AdLeave;

@Service("adUnivService")
public class AdUnivServiceImpl implements AdUnivService{

	@Autowired
	private AdUnivDao adUnivDao;

	@Override
	public ArrayList<AdLeave> adLeaveList() {
		// TODO Auto-generated method stub
		return adUnivDao.adLeaveList();
	}

	@Override
	public int adLeaveUpdate(String string) {
		// TODO Auto-generated method stub
		return adUnivDao.adLeaveUpdate(string);
	}

	@Override
	public ArrayList<AdLeave> adReturnList() {
		// TODO Auto-generated method stub
		return adUnivDao.adReturnList();
	}

	@Override
	public int adReturnUpdate(String string) {
		// TODO Auto-generated method stub
		return adUnivDao.adReturnUpdate(string);
	}

	@Override
	public ArrayList<AdLeave> adGraduateSelect() {
		// TODO Auto-generated method stub
 		return adUnivDao.adGraduateSelect();

	}


}
