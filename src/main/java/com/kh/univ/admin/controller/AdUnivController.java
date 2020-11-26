package com.kh.univ.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdUnivService;
import com.kh.univ.admin.model.vo.AdLeave;

@Controller
public class AdUnivController {

	@Autowired
	private AdUnivService adUnivService;
	/**
	 * 1. 학생 휴학 관리
	 * @return
	 */
	@RequestMapping("ad_student_rest.do")
	public ModelAndView AdStudentRest(ModelAndView mv) {
		
		ArrayList<AdLeave> adLeaveList = adUnivService.adLeaveList();
		
		mv.addObject("adLeaveList", adLeaveList);
		mv.setViewName("admin/ad_student_rest");
		System.out.println();
		
		
		return mv;
	}
	@ResponseBody
	@RequestMapping("ad_leave_update.do")
	public String adLeaveUpdate(String[] stdId) {
		
		for(int i =0 ; i<stdId.length;i++) {
			
			int result = adUnivService.adLeaveUpdate(stdId[i]);
			
			if(result>0) {
				System.out.println(i+"번째 데이터 추가 성공");
			}else {
				return "fail";
			}
		}
		
				return "ok";
	}
	
	/**
	 * 2. 학생 졸업 관리
	 * @return
	 */
	@RequestMapping("ad_student_graduate.do")
	public String AdStudentGraduate() {
		return "admin/ad_student_graduate";
	}
	
	/**
	 * 3. 학생 복학 관리
	 * @return
	 */
	@RequestMapping("ad_student_return.do")
	public String AdStudentReturn() {
		return "admin/ad_student_return";
	}
	
}
