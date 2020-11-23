package com.kh.univ.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.admin.model.vo.AdClassPlan;
import com.kh.univ.admin.model.vo.AdClassTime;
import com.kh.univ.admin.model.vo.AdCollege;
import com.kh.univ.admin.model.vo.AdDepartment;
import com.kh.univ.admin.model.vo.AdLecture;
import com.kh.univ.admin.model.vo.AdProfessor;
import com.kh.univ.lecture.model.vo.Lecture;

@Repository("adLectureDao")
public class AdLectureDao {

    @Autowired
    private SqlSessionTemplate sqlSession;


	public ArrayList<AdCollege> adCollegeSelect() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminLectureMapper.adLectureCollege");
	}

	public ArrayList<AdDepartment> adDepartmentSelect(String collegeCode) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminLectureMapper.adLectureDepartment",collegeCode);
	}

	public ArrayList<AdProfessor> adProfessorSelect(String departmentCode) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminLectureMapper.adLectureProfessor",departmentCode);
	}

//	강의 리스트 조회
	public ArrayList<AdLecture> selectAdLectureList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminLectureMapper.selectAdLectureList");
	}

	public int adInsertLecture(AdLecture adLecture) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminLectureMapper.adminInsertLecture",adLecture);
	}

	public AdLecture findLecture(AdLecture adLecture) {
		// TODO Auto-generated method stub
		return(AdLecture)sqlSession.selectOne("adminLectureMapper.findLecture",adLecture);
	}

	public int adInsertClass(AdClassTime cTime) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminLectureMapper.insertClassTime",cTime);
	}

	public AdLecture lectureSelectOne(int classSeq) {
		// TODO Auto-generated method stub
		return (AdLecture)sqlSession.selectOne("adminLectureMapper.LectureSelectOne",classSeq);
	}

	public ArrayList<AdLecture> lectureApprove() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminLectureMapper.lectureApprove");
	}

	public ArrayList<AdClassPlan> adClassPlanSelect(int classSeq) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("adminLectureMapper.classPlanSelect",classSeq);
	}

	public int lectureUpdate(AdLecture lecture) {
		// TODO Auto-generated method stub
		return sqlSession.update("adminLectureMapper.lectureUpdate",lecture);
	}
}
