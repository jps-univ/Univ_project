package com.kh.univ.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.payment.model.vo.Payment;

@Repository("pDao")
public class PaymentDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Payment> selectList() {

		return (ArrayList)sqlSession.selectList("PaymentMapper.selectList");
	}

	public ArrayList<Payment> selectDetailList() {

		return (ArrayList)sqlSession.selectList("PaymentMapper.selectDetailList");
	}
	
	

}
