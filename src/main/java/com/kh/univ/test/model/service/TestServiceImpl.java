package com.kh.univ.test.model.service;

import com.kh.univ.test.model.dao.TestDao;
import com.kh.univ.test.model.vo.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("tService")
public class TestServiceImpl implements TestService {
	@Autowired
	private TestDao tDao;
	@Override
	public ArrayList<Test> selectList() {
		return tDao.selectList();
	}

}
