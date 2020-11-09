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
	
	@RequestMapping("payment.do")
    public ModelAndView Payment(HttpSession session, ModelAndView mv) {
		
		Student newPay = (Student) session.getAttribute("loginUser");
	
		System.out.println(newPay);
		
		ArrayList<Payment>list = pService.selectList(newPay.getStdId());
		
		mv.addObject("list", list);
		mv.setViewName("payment/payment");
		
        return mv;
    }
	
	@RequestMapping("paymentdetail.do")
    public ModelAndView Paymentdetail(ModelAndView mv){
		
		ArrayList<Payment>list = pService.selectDetailList();
		
		mv.addObject("list", list);
		mv.setViewName("payment/payment_detail");
		
        return mv;
    }
	
	

}
