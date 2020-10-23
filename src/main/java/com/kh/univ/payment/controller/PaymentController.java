package com.kh.univ.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaymentController {
	
	@RequestMapping("payment.do")
    public String Payment()
	{
        return "payment/payment";
    }
	
	@RequestMapping("paymentdetail.do")
    public String Paymentdetail()
	{
        return "payment/paymentdetail";
    }
	
	

}
