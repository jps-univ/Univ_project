package com.kh.univ.lecture.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.univ.lecture.model.service.LectureService;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureApplication;
import com.kh.univ.lecture.model.vo.LectureTime;
import com.kh.univ.lecture.model.vo.SearchCondition;
import com.kh.univ.member.model.vo.Student;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class LectureController {

    @Autowired
    private LectureService lectureService;

    /**
     * 1. 강의 평가 하기( 학생)
     *
     * @return
     */
    @RequestMapping("lecture_evaluation.do")
    public String lectureEvaluation() {
        return "lectureManagement/lecture_evaluation";
    }

    /**
     * 1_2 . 강의평가 하기전에 자신이 듣고 있는 강의 중 선택하는 창
     *
     * @return
     */
    @RequestMapping("lecture_evaluation_select.do")
    public String lectureEvaluationSelect() {
        return "lectureManagement/lecture_evaluation_select";
    }

    /**
     * 2. 강의 평가 학생 목록 조회 (교수)
     *
     * @return
     */
    @RequestMapping("lecture_evaluation_check.do")
    public String lectureEvaluationCheck() {
        return "lectureManagement/lecture_evaluation_check";
    }

    /**
     * 2_1. 강의 평가 상세 페이지 조회(교수)
     *
     * @return
     */
    @RequestMapping("lecture_evaluation_detail.do")
    public String lectureEvaluationDetail() {
        return "lectureManagement/lecture_evaluation_detail";
    }


    @RequestMapping("requestRegisterLecture.do")
    public String requestRegisterLecture() {
        return "lectureManagement/requestRegisterLecture";
    }

    @RequestMapping("alterLectureInfo.do")
    public String alterLectureInfo() {
        return "lectureManagement/alterLectureInfo";
    }

    @RequestMapping("requestDeleteLecture.do")
    public String requestDeleteLecture() {
        return "lectureManagement/requestDeleteLecture";
    }

    @RequestMapping("enrollClassPage.do")
    public String enrollClassPage() {
        return "enrollClass/enrollClassPage";
    }

    /**
     * 강의리스트를 불러와서 수강신청하는 학생의 뷰에 뿌려줌
     * json을 string으로 변환해서 넘겨준다. DataTable()과 연동
     *
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "getLectureList.do", produces = "application/json; charset=utf-8")
    public String getLectureList(
            String classType,
            String inputClassName,
            int classLevel,
            String collegeCode,
            String departmentName,
            String className
    ) throws JsonProcessingException {
        SearchCondition sc = new SearchCondition();


        sc.setClassType(classType);
        sc.setInputClassName(inputClassName);
        sc.setClassLevel(classLevel);
        sc.setCollegeCode(collegeCode);
        sc.setDepartmentName(departmentName);
        sc.setClassName(className);
        ArrayList<Lecture> list = lectureService.selectList(sc);
        ObjectMapper mapper = new ObjectMapper();

        String jsonStr = mapper.writeValueAsString(list);

        return jsonStr;
    }

    /**
     * 단과대학을 선택하면 해당학과들을 출력하게함
     *
     * @param collegeCode
     * @return
     * @throws JsonProcessingException
     */
    @ResponseBody
    @RequestMapping(value = "checkCollege.do", produces = "application/json; charset=utf-8")
    public String checkCollege(String collegeCode) throws JsonProcessingException {

        ObjectMapper mapper = new ObjectMapper();
        ArrayList<Lecture> list = lectureService.checkCollege(collegeCode);
        String jsonStr = mapper.writeValueAsString(list);
        if (collegeCode != null) {
            return jsonStr;
        } else {
            return "fail!";
        }
    }

    /**
     * 해당학과를  선택하면 해당과목들을 출력하게함
     *
     * @param deptName
     * @return
     * @throws JsonProcessingException
     */
    @ResponseBody
    @RequestMapping(value = "checkDept.do", produces = "application/json; charset=utf-8")
    public String checkDept(String deptName) throws JsonProcessingException {
//        JSONObject job = new JSONObject(); //JSON 사용을 위해 pom.xml 에 넣은 json.simple library를 추가했기 때문 .
        ObjectMapper mapper = new ObjectMapper();
        ArrayList<Lecture> list = lectureService.checkDept(deptName);
//        job.put("list",list);
        String jsonStr = mapper.writeValueAsString(list);

        if (deptName != null) {
            return jsonStr;
        } else {
            return "fail!";
        }
    }

    /**
     * 세션에서 학번 추출, ajax로 classSeq 전달받음
     * 유효성검사를 통해서 TB_REGISTER_CLASS 에 데이터를 넣음
     *
     * @param session
     * @param classSeq
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "registerClass.do", produces = "application/json; charset=utf-8")
    public String registerClass(HttpSession session,
                                int classSeq) {

        Student user = (Student) session.getAttribute("loginUser");
        int stdId = ((Student) user).getStdId();

//        int stdId = 20201010;

        System.out.println(classSeq);
        System.out.println(stdId);

        ArrayList<LectureTime> list = lectureService.getDayHourList(stdId);
        ArrayList<LectureTime> list2 = lectureService.getDayHourList2(classSeq);
        // list로 뽑아온 lecturetime 타입오브젝트에서 dayHour만 뽑아 새로운 배열 생성
        // stdId 로 뽑아온 dayHour와 classSeq로 뽑아온 dayHour를 비교해야함.
        ArrayList dayHourList = new ArrayList();
        ArrayList dayHourList2 = new ArrayList();
        for (LectureTime time : list) {
            dayHourList.add(time.getDayHour());
        }
        for (LectureTime lectureTime : list2) {
            dayHourList2.add(lectureTime.getDayHour());
        }


        boolean noDuplicate = true;

        System.out.println(dayHourList);
        System.out.println(dayHourList2);
        for (int i = 0; i < dayHourList.size(); i++) {
            for (int j = 0; j < dayHourList2.size(); j++) {
                if (dayHourList.get(i).equals(dayHourList2.get(j))) {
                    noDuplicate = false;
                }
            }
        }
        System.out.println(noDuplicate);
        HashMap map = new HashMap();
        map.put("stdId", stdId);
        map.put("classSeq", classSeq);
        // noduplicate 일때만 실행.
        if (noDuplicate) {
            int result = lectureService.insertRegisterClass(map);
            if (result > 0) {
                return "ok";
            } else return "fail";
        }else {
            return "시간이 중복되는 강의가 있습니다.";
        }


    }

}



