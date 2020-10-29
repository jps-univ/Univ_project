package com.kh.univ.payment.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.payment.model.service.PaymentService;
import com.kh.univ.payment.model.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService pService;
	
	@RequestMapping("payment.do")
    public ModelAndView Payment(ModelAndView mv) {
		
		ArrayList<Payment>list = pService.selectList();
		
		mv.addObject("list", list);
		mv.setViewName("payment/payment");
		
        return mv;
    }
	
	@RequestMapping("paymentdetail.do")
    public String Paymentdetail()
	{
        return "payment/payment_detail";
    }
	
	

}
