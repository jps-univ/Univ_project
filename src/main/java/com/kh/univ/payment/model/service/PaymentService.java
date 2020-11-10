package com.kh.univ.payment.model.service;

import java.util.ArrayList;

import com.kh.univ.payment.model.vo.Payment;

public interface PaymentService {

	ArrayList<Payment> selectList(int i);

	ArrayList<Payment> selectDetailList();

}
