package com.kh.univ.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.admin.model.vo.AdCollege;
import com.kh.univ.admin.model.vo.AdDepartment;
import com.kh.univ.admin.model.vo.AdProfessor;
import com.kh.univ.lecture.model.vo.Lecture;

@Repository("adLectureDao")
public class AdLectureDao {

    @Autowired
    private SqlSessionTemplate sqlSession;

	public int insertLecture(Lecture lecture) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminLectureMapper.adminInsertLecture",lecture);
	}

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
}
