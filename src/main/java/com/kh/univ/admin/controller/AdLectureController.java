package com.kh.univ.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.admin.model.service.AdLectureService;
import com.kh.univ.admin.model.vo.AdClassPlan;
import com.kh.univ.admin.model.vo.AdClassTime;
import com.kh.univ.admin.model.vo.AdCollege;
import com.kh.univ.admin.model.vo.AdDepartment;
import com.kh.univ.admin.model.vo.AdLecture;
import com.kh.univ.admin.model.vo.AdProfessor;
import com.kh.univ.lecture.model.vo.Lecture;


@Controller
public class AdLectureController {

	@Autowired
	private AdLectureService adLectureService;
	/**
	 * 1. 강의 등록 페이지 띄우기 (관리자)
	 * @return
	 */
	@RequestMapping("lecture_Register.do")
	public ModelAndView lectureRegister(ModelAndView mv) {
		ArrayList<AdCollege> adCollegeSelect = adLectureService.adCollegeSelect();
		mv.addObject("adCollege", adCollegeSelect);
		mv.setViewName("admin/ad_lecture_register");
		//int result = adLectureService.insertLecture(lecture);
		return mv;
	}
	
	/**
	 * 1_2. 강의 등록에서 departmentCode Select
	 * @param CollegeCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping("admin_Lecture_Department.do")
	public ArrayList<AdDepartment> selectAdDepartment(String CollegeCode){
		ArrayList<AdDepartment> selectAdDepartment = adLectureService.adDepartmentSelect(CollegeCode);
		return selectAdDepartment;
	}
	/**
	 * 1_3. 강의 등록에서 professorName Select
	 * @param departmentCode
	 * @return
	 */
	@ResponseBody
	@RequestMapping("admin_Lecture_Professor.do")
	public ArrayList<AdProfessor> selectAdProfessorName(String departmentCode){
		ArrayList<AdProfessor> selectAdProfessorName = adLectureService.adProfessorSelect(departmentCode);
		return selectAdProfessorName;
	}
	
	/**
	 * 1_4. 강의 추가하기 
	 * @param adLecture
	 * @return
	 */
	@RequestMapping("admin_Lecture_insert.do")
	public String insertLectureOne(AdLecture adLecture, String classTime ) {
		
		int insertLecture = adLectureService.adInsertLecture(adLecture);
		if(insertLecture >0) {
			insertClassTime(classTime,adLecture);
			return "redirect:lecture_Register.do";
		}else {
			return "common/errorPage";
		}
		
	}
	/**
	 * 1_4_2. 추가한 강의 시퀸스 가져오기 
	 * @param adLecture
	 * @return
	 */
	public int findLecture(AdLecture adLecture)	{
		AdLecture findLecture = adLectureService.findLecture(adLecture);
		return findLecture.getClassSeq();
		
	}
	/**
	 * 1_4_3. 강의 시퀸스로 강의 시간 insert
	 * @param classTime
	 * @param adLecture
	 */
	public void insertClassTime(String classTime,AdLecture adLecture) {
		
		AdClassTime cTime = new AdClassTime();
		String[] classTimeArry = classTime.split("/");
		for(int i=0;i<classTimeArry.length;i++) {
			
			cTime.setClassSeq(findLecture(adLecture));
			cTime.setDay(classTimeArry[i].substring(0,1));
			cTime.setHour(classTimeArry[i].substring(1,2));
			
			int insertClassTime = adLectureService.adInsertClassTime(cTime);
			
			if(insertClassTime>0) {
				System.out.println(i+"번째 수업시간 인서트");
			}else {
				System.out.println(i+"번째 수업시간 인서트 실패");
			}
		}
		
	}
	
	
	/**
	 * 2. 강의 수정 (관리자)
	 * @return
	 */
	@RequestMapping("lecture_Modify.do")
	public ModelAndView lectureModify(ModelAndView mv) {
		ArrayList<AdCollege> adCollegeSelect = adLectureService.adCollegeSelect();
		ArrayList<AdLecture> selectAdLectureList = adLectureService.selectAdLectureList();
		
		mv.addObject("selectAdLectureList",selectAdLectureList);
		mv.addObject("adCollege", adCollegeSelect);
		mv.setViewName("admin/ad_lecture_modify");
		return mv;
	}
	
	/**
	 * 2_2. 강의 수정 강의 하나 select 하기
	 * @param classSeq
	 * @return
	 */
	@ResponseBody
	@RequestMapping("lecture_Modify_selectOne.do")
	public AdLecture lectureModifySelectOne(int classSeq) {
		
		AdLecture lectureSelectOne = adLectureService.lectureSelectOne(classSeq);
		System.out.println(lectureSelectOne);
		return lectureSelectOne;
	}
	
	/**
	 * 2_3. 강의 수정 classSeq로 강의계획서 가져오기 
	 * 
	 * @param classSeq
	 * @return
	 */
	@ResponseBody
	@RequestMapping("ad_classplan.do")
	public ArrayList<AdClassPlan> adClassPlan(int classSeq) {
		
		ArrayList<AdClassPlan> adClassPlanSelect = adLectureService.adClassPlanSelect(classSeq);
		System.out.println(adClassPlanSelect);
		
		return adClassPlanSelect;
		
	}
	/**
	 * 3. 휴강 관리(관리자)
	 * @return
	 */
	@RequestMapping("lecture_Rest.do")
	public String lectureRest() {
		return "admin/ad_lecture_rest";
	}
	
	/**
	 * 4. 강의 신청 관리(관리자)
	 * @return
	 */
	@RequestMapping("lecture_Approve.do")
	public ModelAndView lectureApprove(ModelAndView mv) {
		
		ArrayList<AdLecture> lectureApprove = adLectureService.lectureApprove();
		System.out.println(lectureApprove);
		mv.addObject("lectureApprove",lectureApprove);
		mv.setViewName("admin/ad_lecture_approve");
		
		return mv;
	}
}
