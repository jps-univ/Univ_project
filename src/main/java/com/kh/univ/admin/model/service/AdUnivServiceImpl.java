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
}
