package com.kh.univ.lecture.model.service;

import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureTime;
import com.kh.univ.lecture.model.vo.SearchCondition;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface LectureService {
//    조건을 설정하고 검색을하면 조건값들이 객체에담겨서 데이터를 꺼내옴(모든과목검색,..)
    ArrayList<Lecture> selectList(SearchCondition sc);

//  조건 검색창에서 학과를 선택하면 디비에서 학과의 전공을 모두 불러옴
    ArrayList<Lecture> checkDept(String deptName);

//  조건 검색창에서 단과대확을 선택하면 디비에서 해당 단과대학의 학과를 모두 불러옴
    ArrayList<Lecture> checkCollege(String collegeCode);

//  학번을 통해 나의 현재 수강과목들의 시간표를 불러옴(시간표 중복 검사를 위해)
    ArrayList<LectureTime> getDayHourList(HashMap map);
    ArrayList<LectureTime> getDayHourListBasket(HashMap map);

//   클래스시퀀스를 통해 해당 과목의 시간표를 불러옴. (시간표 중복 검사를 위해)
    ArrayList<LectureTime> getDayHourList2(HashMap map);

//    학번과, 클래스시퀀스를 넘겨 수강신청테이블에 값 등록
    int insertRegisterClass(HashMap map);
    int insertBasketClass(HashMap map);

//    내가 현재 수강하고있는 수강과목들을 불러와서 뿌려줌
    ArrayList<Lecture> selectList(HashMap map);
    ArrayList<Lecture> selectBasket(HashMap map);

//    내 수강과목 테이블에서 데이터를 삭제함
    int deleteMyClass(HashMap map);
    int deleteMyBasket(HashMap map);


//    강의등록 요청란에서 과목코드를 키업으로 체크
    int codeCheck(String classCode);
//    강의등록을 하는데 approve를 N으로 해서 넣음.
    int requestRegisterClass(Lecture lecture);
//    강의시퀀스를 찾아와서 수강신청테이블에 같이 넣어줌
    int selectClassSeq(String classCode);
    // 강의 시간표 인서트
    int insertClassTime(LectureTime lecTime);

    // 교수의 삭제요청할 테이블을 갖고옴
    ArrayList<Lecture> getDeleteTable(int profId);
}
