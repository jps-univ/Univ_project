package com.kh.univ.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminDateController {
    @RequestMapping("adminDateGo.do")
    public String AdNoticeList() {
        return "admin/admin_date_modify";
    }
}
