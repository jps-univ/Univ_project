package com.kh.univ.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.member.model.vo.Student;
import com.kh.univ.payment.model.service.PaymentService;
import com.kh.univ.payment.model.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService pService;
	
	// 학생등록금페이지
	@RequestMapping("payment.do")
    public ModelAndView Payment(HttpSession session, ModelAndView mv) {
		
		Student newPay = (Student) session.getAttribute("loginUser");
		int id = newPay.getStdId();
		
		ArrayList<Payment>list = pService.selectList(newPay.getStdId());
		mv.addObject("list", list);
		mv.addObject("id", id);
		mv.setViewName("payment/payment");
		
		
        return mv;
    }
	
	// 인쇄하기 클릭 시 하나의 정보 가져오기
	@RequestMapping("paymentdetail.do")
    public ModelAndView Paymentdetail(int paymentNo,HttpSession session, ModelAndView mv){
		
		Student newPaydetail = (Student)session.getAttribute("loginUser");
		Payment pay = pService.selectPayment(paymentNo);
		
		mv.addObject("p", pay);
		mv.setViewName("payment/payment_detail");
		
        return mv;
    }
	
	

}
