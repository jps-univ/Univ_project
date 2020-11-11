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

	// 등록금 리스트
	public ArrayList<Payment> selectList(int i) {
		
		System.out.println(i);
		

		return (ArrayList)sqlSession.selectList("PaymentMapper.selectList", i);
		
	}

//	public ArrayList<Payment> selectDetailList(int i) {
//
//		return (ArrayList)sqlSession.selectList("PaymentMapper.selectDetailList",i);
//	}

	// 등록금 하나 뽑아오기
	public Payment selectPayment(int paymentNo) {
		
		return sqlSession.selectOne("PaymentMapper.selectPayment", paymentNo);
	}
	
	

}
