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

	@Override
	public ArrayList<Payment> selectList() {

		return pDao.selectList();
	}

	@Override
	public ArrayList<Payment> selectDetailList() {

		return pDao.selectDetailList();
	}

}
