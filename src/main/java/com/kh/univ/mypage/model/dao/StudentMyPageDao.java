package com.kh.univ.mypage.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.univ.classBoard.vo.PageInfo;
import com.kh.univ.consulting.model.vo.Consulting;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.member.model.vo.Image;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

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
		return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectConsulting", student);
	}

	public int cancleConsulting(Consulting consulting)
	{
		return sqlSession.update("StudentMyPageMapper.cancleConsulting", consulting);
	}

	public int getProfCount(Map map) 
	{
		if(map.get("profName") == "" && !(map.get("profCollege").equals("c0")) && !(map.get("departmentName").equals("전체")))
		{
			return sqlSession.selectOne("StudentMyPageMapper.getProfCountCD", map);		
		}
		else if(!(map.get("profName") == "") && !(map.get("profCollege").equals("c0")) && map.get("departmentName").equals("전체"))
		{
			return sqlSession.selectOne("StudentMyPageMapper.getProfCountCN", map);
		}
		else if(!(map.get("profName") == "") && map.get("profCollege").equals("c0") && map.get("departmentName").equals("전체"))
		{
			return sqlSession.selectOne("StudentMyPageMapper.getProfCountN", map);
		}
		else if(map.get("profName") == "" && !(map.get("profCollege").equals("c0")) && map.get("departmentName").equals("전체")) 
		{
			return sqlSession.selectOne("StudentMyPageMapper.getProfCountC", map);
		}
		else if(map.get("profName") == "" && map.get("profCollege").equals("c0") && map.get("departmentName").equals("전체")) 
		{
			return sqlSession.selectOne("StudentMyPageMapper.getProfCountALL", map);
		}
		else
		{
			return sqlSession.selectOne("StudentMyPageMapper.getProfCount", map);
		}
	}

	public ArrayList<Professor> selectProfessor2(PageInfo pi) 
	{
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectProfessorAll", null, rowBounds);
	}

	public int insertStdImage(Image i)
	{
		return sqlSession.insert("StudentMyPageMapper.insertStdImage", i);
	}

	public ArrayList<Image> selectStdImage(Student student) 
	{
		return (ArrayList)sqlSession.selectList("StudentMyPageMapper.selectStdImage", student);
	}
}