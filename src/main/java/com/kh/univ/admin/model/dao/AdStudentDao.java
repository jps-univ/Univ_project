package com.kh.univ.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.member.model.vo.College;
import com.kh.univ.member.model.vo.Department;
import com.kh.univ.member.model.vo.Student;

@Repository("adStudentDao")
public class AdStudentDao {
	
    @Autowired
    private SqlSessionTemplate sqlSession;
   
	public ArrayList<Student> selectList() {
        return (ArrayList) sqlSession.selectList("adminStudentMapper.selectAdminStudent");
	}

	public Student selectOne(int stdId) {
		// TODO Auto-generated method stub
		return (Student)sqlSession.selectOne("adminStudentMapper.selectOneAdminStudent",stdId);
	}

	public int selectOneUpdate(Student std) {
		// TODO Auto-generated method stub
		return sqlSession.update("adminStudentMapper.selectOneUpdateAdminStudent",std);
	}

	public ArrayList<College> selectDept() {
		// TODO Auto-generated method stub
		 return (ArrayList) sqlSession.selectList("adminStudentMapper.selectAdminDept");
	}

	public ArrayList<Department> deptCheck(String collegeCode) {
		// TODO Auto-generated method stub
		return (ArrayList) sqlSession.selectList("adminStudentMapper.selectDeptCheck",collegeCode);
	}

	public int insertOne(Student std) {
		// TODO Auto-generated method stub
		return sqlSession.insert("adminStudentMapper.insertOne",std);
	}

	public ArrayList<Student> searchCollege(String collegeCode, String departmentCode, int searchSemester) {

		
		return null;
//		return (ArrayList)sqlSession.selectMap("adminStudentMapper.searchCollege",collegeCode,departmentCode);
	}

}
