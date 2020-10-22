package com.kh.univ.test.model.dao;

import com.kh.univ.test.model.vo.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository("tDao")
public class TestDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Test> selectList() {
		return (ArrayList)sqlSession.selectList("testMapper.selectList");
	}

}
