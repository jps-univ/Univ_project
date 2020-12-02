package com.kh.univ.lecture.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kh.univ.admin.model.vo.AdClassPlan;
import com.kh.univ.lecture.model.service.LectureService;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureTime;
import com.kh.univ.lecture.model.vo.SearchCondition;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class LectureController {

    @Autowired
    private LectureService lectureService;

    public int callYear(){
        SimpleDateFormat format1 = new SimpleDateFormat( "yyyy");

        Date time = new Date();

        int classYear = Integer.parseInt(format1.format(time));

        return classYear;
    }
    public int callSemester(){
        SimpleDateFormat format2 = new SimpleDateFormat( "MM");
        Date time = new Date();
        String month = format2.format(time);
        int classSemester;
        if(month.equals("01") || month.equals("02")||month.equals("03")||month.equals("04")||month.equals("05")||month.equals("06")){
            classSemester = 1;
        }else classSemester = 2;

        return classSemester;
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

    @RequestMapping("basketClassPage.do")
    public String basketClassPage() {
        return "enrollClass/basketClassPage";
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



        System.out.println("현재는 "+callYear()+"년도 "+callSemester()+"학기");
        sc.setClassType(classType);
        sc.setInputClassName(inputClassName);
        sc.setClassLevel(classLevel);
        sc.setCollegeCode(collegeCode);
        sc.setDepartmentName(departmentName);
        sc.setClassName(className);
        sc.setClassYear(callYear());
//        sc.setClassYear(2021);
        sc.setClassSemester(callSemester());
//        sc.setClassSemester(1);
        ArrayList<Lecture> list = lectureService.selectList(sc);
        ObjectMapper mapper = new ObjectMapper();

        String jsonStr = mapper.writeValueAsString(list);
        System.out.println(jsonStr);
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

    // 시간표 중복체크함수.
    private boolean checkDuplicate(int stdId, int classSeq, HttpServletRequest request) {
        boolean noDuplicate = true;
        System.out.println("등록을 원하는 클래스 시퀀스 : " + classSeq);
        System.out.println("등록하려는 학생의 학번 : " + stdId);
        HashMap map = new HashMap();
        map.put("stdId",stdId);
        map.put("classSeq",classSeq);
        map.put("classYear",callYear());
        map.put("classSemester",callSemester());


        ArrayList<LectureTime> list = new ArrayList<>();
        if (request.getServletPath().equals("/registerClass.do")) {
            list = lectureService.getDayHourList(map);
        } else list = lectureService.getDayHourListBasket(map);


        ArrayList<LectureTime> list2 = lectureService.getDayHourList2(map);
        ArrayList dayHourList = new ArrayList();
        ArrayList dayHourList2 = new ArrayList();
        for (LectureTime time : list) {
            dayHourList.add(time.getDayHour());
        }
        for (LectureTime lectureTime : list2) {
            dayHourList2.add(lectureTime.getDayHour());
        }
        System.out.println("내가 갖고 있는 시간표 " + dayHourList);
        System.out.println("등록하려는 클래스의 시간표 " + dayHourList2);
        for (int i = 0; i < dayHourList.size(); i++) {
            for (int j = 0; j < dayHourList2.size(); j++) {
                if (dayHourList.get(i).equals(dayHourList2.get(j))) {
                    noDuplicate = false;
                }
            }
        }
        return noDuplicate;
    }

    /**
     * 세션에서 학번 추출, ajax로 classSeq 전달받음
     * 유효성검사를 통해서 TB_REGISTER_CLASS 에 데이터를 넣음
     * 장바구니에도 등록하는 클래스, 리퀘스트매핑을 구분해 각기 다른테이블에 담음
     *
     * @param session
     * @param classSeq
     * @return
     */
    @ResponseBody
    @RequestMapping(value = {"registerClass.do", "basketClass.do"}, produces = "application/json; charset=utf-8")
    public String registerClass(HttpSession session, HttpServletRequest request,
                                int classSeq) {

        Student user = (Student) session.getAttribute("loginUser");
        int stdId = user.getStdId();
//
        boolean noDuplicate = checkDuplicate(stdId, classSeq, request);
        System.out.println("중복이 없으면  true 중복이 있다면 false : " + noDuplicate);
        HashMap map = new HashMap();
        map.put("stdId", stdId);
        map.put("classSeq", classSeq);
        // noduplicate 일때만 실행.
        if (noDuplicate) {
            System.out.println(request.getServletPath());
            if (request.getServletPath().equals("/registerClass.do")) {
                int result = lectureService.insertRegisterClass(map);
                if (result > 0) {
                    return "강의신청이 완료되었습니다.";
                } else return "fail";
            } else if (request.getServletPath().equals("/basketClass.do")) {
                int result = lectureService.insertBasketClass(map);
                if (result > 0) {
                    return " 해당과목이 장바구니에 등록되었습니다.";
                } else return "fail";
            } else return "fail";
        } else {
            return "시간이 중복되는 강의가 있습니다.";
        }

    }

    /**
     * 내 강의시간표를 뽑아서 제이슨스트링으로 보내줌
     *
     * @param session
     * @return
     * @throws JsonProcessingException
     */
    @ResponseBody
    @RequestMapping(value = {"getMyLectureList.do", "getMyBasketList.do"}, produces = "application/json; charset=utf-8")
    public String getMyLectureList(HttpSession session, HttpServletRequest request) throws JsonProcessingException {
        Student user = (Student) session.getAttribute("loginUser");
        int stdId = user.getStdId();
        HashMap map = new HashMap();

        map.put("stdId",stdId);
        map.put("classYear",callYear());
        map.put("classSemester",callSemester());

        ArrayList<Lecture> list = new ArrayList<>();
        if (request.getServletPath().equals("/getMyLectureList.do")) {
            list = lectureService.selectList(map);
        } else if (request.getServletPath().equals("/getMyBasketList.do")) {
            list = lectureService.selectBasket(map);
        }
        ObjectMapper mapper = new ObjectMapper();

        String jsonStr = mapper.writeValueAsString(list);
        return jsonStr;
    }

    /**
     * 학생 수강신청에서 강의삭제 컨트롤러
     *
     * @param session
     * @param classSeq
     * @return
     */
    @ResponseBody
    @RequestMapping(value = {"deleteMyClass.do", "deleteMyBasket.do"}, produces = "application/json; charset=utf-8")
    public String deleteMyClass(HttpSession session, HttpServletRequest request, int classSeq) {
        Student user = (Student) session.getAttribute("loginUser");
        int stdId = user.getStdId();

        System.out.println("삭제하려는 과목의 시퀀스 : " + classSeq);

        // 수강신청 테이블 인스턴스들이 stdId, classSeq 이기 때문에 해시맵이용
        HashMap map = new HashMap();
        map.put("stdId", stdId);
        map.put("classSeq", classSeq);

        if (request.getServletPath().equals("/deleteMyClass.do")) {
            int result = lectureService.deleteMyClass(map);
            if (result > 0) {
                return "해당과목 취소가 완료되었습니다.";
            } else return "fail";
        } else if (request.getServletPath().equals("/deleteMyBasket.do")) {
            int result = lectureService.deleteMyBasket(map);
            if (result > 0) {
                return "해당과목 취소가 완료되었습니다.";
            } else return "fail";
        } else return "fail";
    }

    /**
     * 교수가 강의 요청을 할 때 클래스코드가 중복인지 확인
     * @param classCode
     * @return
     */
    @ResponseBody
    @RequestMapping("classCodeCheck.do")
    public String codeCheck(String classCode) {
        int result = lectureService.codeCheck(classCode);

        if (result > 0) {
            return "fail";
        } else {
            return "ok";
        }
    }

    /**
     * 교수 강의등록요청 컨트롤러
     * @param session
     * @param lecture
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "requestRegisterClass.do", produces = "application/json; charset=utf-8")
    public String requestRegisterClass(HttpSession session,Lecture lecture){
        Professor user = (Professor) session.getAttribute("loginUser");
        String deptCode = user.getProfDepartment();
        int profId = user.getProfId();
        lecture.setDeptCode(deptCode);
        lecture.setProfId(profId);
        System.out.println(lecture);

        int result = lectureService.requestRegisterClass(lecture);
        if (result > 0){
            return "ok";
        }else return "fail";
    }

    /**
     * 교수 강의등록요청할때 동시에 시간표도 함께 넣는 컨트롤러
     * @param classCode
     * @param dayList
     * @param hourList
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "requestRegisterTime.do", produces = "application/json; charset=utf-8")
    public String requestRegisterTime(String classCode,String dayList, String hourList){
        int classSeq = lectureService.selectClassSeq(classCode);
        System.out.println(dayList);
        System.out.println(hourList);

        LectureTime lecTime = new LectureTime();

        String[] dayArray = dayList.split(",");
        String[] hourArray = hourList.split(",");

        for (int i = 0; i < dayArray.length; i++ ){
            lecTime.setClassSeq(classSeq);
            lecTime.setDay(dayArray[i]);
            lecTime.setHour(hourArray[i]);
            int result = lectureService.insertClassTime(lecTime);
            if(result>0) {
                System.out.println(i+"번째 수업시간 인서트");
            }else {
                System.out.println(i+"번째 수업시간 인서트 실패");
            }
        }
        return "ok";
    }

    /**
     * null로 저장된 세개의 컬럼을 파라미터로 받아온 값으로 업데이트
     * @param classCode
     * @param classBook
     * @param classOutline
     * @param classTarget
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "addThreeItem.do", produces = "application/json; charset=utf-8")
    public String requestRegisterPlan(
                                      String classCode,
                                      String classBook,
                                      String classOutline,
                                      String classTarget){
        int classSeq = lectureService.selectClassSeq(classCode);

        HashMap map = new HashMap();
        map.put("classSeq", classSeq);
        map.put("classBook", classBook);
        map.put("classOutline", classOutline);
        map.put("classTarget", classTarget);
        System.out.println(map);

        //
        int result = lectureService.updateAdditional(map);
        if (result > 0){
            return "업데이트 완료";
        }else return "업데이트 중 에러 발생";
    }

    /**
     * 15주간의 주제와 수업내용을 배열로서 저장한다.
     * @param session
     * @param classCode
     * @param weekPlanArray
     * @param topicArray
     * @return
     * @throws JsonProcessingException
     */
    @ResponseBody
    @RequestMapping(value = "addWeekPlan.do", produces = "application/json; charset=utf-8")
    public String addWeekPlan(String classCode,
//                              이렇게 지정해줘야 js 배열객체를 리스트로 뽑아올 수 있다.
                              @RequestParam(value = "weekPlanArray[]") List<String> weekPlanArray,
                              @RequestParam(value = "topicArray[]") List<String> topicArray)
            throws JsonProcessingException {


        int classSeq = lectureService.selectClassSeq(classCode);
        System.out.println("클래스코드는 :" + classCode);
        AdClassPlan ap = new AdClassPlan();
        for (int i = 0; i<weekPlanArray.size(); i++){
            ap.setClassSeq(classSeq);
            ap.setWeek(i+1);
            ap.setWeekPlan(weekPlanArray.get(i));
            ap.setTopic(topicArray.get(i));
            int result = lectureService.insertPlan(ap);
            if (result>0){
                System.out.println(i+"번째 플랜 등록완료 ");
            }else {
                System.out.println(i+"번째에서 플랜등록 에러");
            }
        }
        return null;

    }


    /**
     * 강의 삭제요청,수정요청을 하기 위해 리스트를 뽑아옴
     * @param session
     * @return
     * @throws JsonProcessingException
     */
    @ResponseBody
    @RequestMapping(value = "getDeleteTable.do", produces = "application/json; charset=utf-8")
    public String getDeleteTable(HttpSession session) throws JsonProcessingException {
//        Professor user = (Professor) session.getAttribute("loginUser");
        int profId = ((Professor)session.getAttribute("loginUser")).getProfId();
        ArrayList<Lecture> list = lectureService.getDeleteTable(profId);
        ObjectMapper mapper = new ObjectMapper();

        String jsonStr = mapper.writeValueAsString(list);
        return jsonStr;

    }


    /**
     * 삭제요청이지만 사실 데이터베이스에서는 삭제가 아니라 업데이트로 상태값을 바꿔준다.
     * @param classSeq
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "requestDeleteClass.do", produces = "application/json; charset=utf-8")
    public String requestDeleteClass(int classSeq){
        int result = lectureService.requestDeleteClass(classSeq);
        if (result > 0){
            return "ok";
        }else return "fail";
    }
}