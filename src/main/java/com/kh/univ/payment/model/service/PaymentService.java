package com.kh.univ.payment.model.service;

import java.util.ArrayList;

import com.kh.univ.payment.model.vo.Payment;

public interface PaymentService {

	// 등록금 리스트
	ArrayList<Payment> selectList(int i);

	// 등록금 하나 뽑아오기
	Payment selectPayment(int paymentNo);

}
