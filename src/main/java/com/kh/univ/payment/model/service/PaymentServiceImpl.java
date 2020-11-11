package com.kh.univ.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.univ.payment.model.dao.PaymentDao;
import com.kh.univ.payment.model.vo.Payment;

@Service("pService")
public class PaymentServiceImpl implements PaymentService{
	
	@Autowired
	private PaymentDao pDao;
	
	// 등록금 리스트
	@Override
	public ArrayList<Payment> selectList(int i) {

		return pDao.selectList(i);
	}

//	@Override
//	public ArrayList<Payment> selectDetailList(int i) {
//
//		return pDao.selectDetailList(i);
//	}
	
	// 등록금 하나 뽑아오기
	@Override
	public Payment selectPayment(int paymentNo) {
		
		return pDao.selectPayment(paymentNo);
	}

}
