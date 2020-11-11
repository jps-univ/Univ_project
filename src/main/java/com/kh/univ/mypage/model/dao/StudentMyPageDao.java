package com.kh.univ.mypage.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;
import com.kh.univ.register.model.vo.Register;

@Repository("msDao")
public class StudentMyPageDao 
{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int changeStdPersonalInfo(Student student) 
	{
		return sqlSession.update("StudentMyPageMapper.changeStdPersonalInfo", student);
	}

	public int changeStdAgreeInfo(Student student) 
	{
		return sqlSession.update("StudentMyPageMapper.changeStdAgreeInfo", student);
	}
	
	public Student checkStdPwd(Student student) 
	{
		return (Student)sqlSession.selectOne("StudentMyPageMapper.checkStdPwd", student);
	}

	public int changeStdPwd(Student student) 
	{
		return sqlSession.update("StudentMyPageMapper.changeStdPassword", student);
	}

	public Student selectStdStatus(Student student) 
	{
		return (Student)sqlSession.selectOne("StudentMyPageMapper.selectStdStatus", student);
	}

	public Student selectStdDepartment(Student student)
	{
		return (Student)sqlSession.selectOne("StudentMyPageMapper.selectStdDepartment", student);
	}

	public ArrayList<Lecture> selectStdSchdule(Map map)
	{
		return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectStdSchdule", map);
	}

	public ArrayList<Professor> selectProfessor(Map map) 
	{
		if(map.get("profName") == "" && !(map.get("profCollege").equals("c0")) && !(map.get("departmentName").equals("전체")))
		{
			return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectProfessorCD", map);			
		}
		else if(!(map.get("profName") == "") && !(map.get("profCollege").equals("c0")) && map.get("departmentName").equals("전체"))
		{
			return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectProfessorCN", map);
		}
		else if(!(map.get("profName") == "") && map.get("profCollege").equals("c0") && map.get("departmentName").equals("전체"))
		{
			return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectProfessorN", map);
		}
		else if(map.get("profName") == "" && !(map.get("profCollege").equals("c0")) && map.get("departmentName").equals("전체")) 
		{
			return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectProfessorC", map);
		}
		else if(map.get("profName") == "" && map.get("profCollege").equals("c0") && map.get("departmentName").equals("전체")) 
		{
			return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectProfessorAll", map);
		}
		else
		{
			return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectProfessor", map);
		}
	}

	public int applyConsulting(Map map) 
	{
		
		return sqlSession.insert("StudentMyPageMapper.applyConsulting", map);
	}

	public ArrayList<Consulting> selectApply(Student student) 
	{
		return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectApply", student);
	}
}