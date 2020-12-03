package com.kh.univ.lecture.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.univ.lecture.model.service.LectureEvaluationService;
import com.kh.univ.lecture.model.vo.EvaluationResult;
import com.kh.univ.lecture.model.vo.Lecture;
import com.kh.univ.lecture.model.vo.LectureEvaluation;
import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

@Controller
public class LectureEvaluationController 
{
	@Autowired
	private LectureEvaluationService leService;
	
	/**
     * 1. 강의 평가 하기(학생)
     * @return
     */
    @RequestMapping("lecture_evaluation.do")
    public ModelAndView lectureEvaluation(ModelAndView mv, HttpSession session, Student student, Lecture lecture)
    {
		mv.addObject("student", student);
		mv.addObject("lecture", lecture);

		mv.setViewName("lectureManagement/lecture_evaluation");
    	
		return mv;
    }

    /**
     * 1_2 . 강의평가 하기전에 자신이 듣고 있는 강의 중 선택하는 창
     * @return
     */
    /*
    @RequestMapping("lecture_evaluation_select.do")
    public ModelAndView lectureEvaluationSelect(ModelAndView mv, Lecture lecture, HttpSession session) 
    {
		Student student = (Student)session.getAttribute("loginUser");

		
//		Calendar cal = new GregorianCalendar();
//		Date d = new Date(cal.getTimeInMillis());
		
		
		int stdId = student.getStdId();
		int classYear = 2021;
		int classSemester = 1;
		

//		if(m < 7)
//		{
//			classSemester = 1;
//		}
//		else 
//		{
//			classSemester = 2;
//		}


		Map map = new HashMap();
		
		map.put("stdId", stdId);
		map.put("classYear", classYear);
		map.put("classSemester", classSemester);

		ArrayList<Lecture> schedule = leService.selectStdSchdule(map);
		
		mv.addObject("schedule", schedule);
    	
		mv.setViewName("lectureManagement/lecture_evaluation_select");

		return mv;
    }
    */
    
    @RequestMapping("lecture_evaluation_select.do")
    public ModelAndView lectureEvaluationSelect(ModelAndView mv, EvaluationResult evaluation, HttpSession session) 
    {
    	Student student = (Student)session.getAttribute("loginUser");
    	
    	evaluation.setStdId(student.getStdId());
    	evaluation.setClassYear(2020);
    	evaluation.setClassSemester(2);
    	    	    	
    	ArrayList<EvaluationResult> schedule = leService.selectStdSchdule(evaluation);
    	ArrayList<EvaluationResult> list = leService.selectStdEvaluation(evaluation);
    	ArrayList<EvaluationResult> result = new ArrayList<>();
    	
    	for(int i = 0; i < schedule.size(); i++)
    	{
    		
    		for(int j = 0; j < list.size(); j++)
    		{
    			
    			if(schedule.get(i).getClassSeq() == list.get(j).getClassSeq())
    			{
    				int evalNo = list.get(j).getEvalNo();
					int evalOne = list.get(j).getEvalOne();
					int evalTwo = list.get(j).getEvalTwo();
					int evalThree = list.get(j).getEvalThree();
					int evalFour = list.get(j).getEvalFour();
					int evalFive = list.get(j).getEvalFive();
					int evalSix = list.get(j).getEvalSix();
					int evalSeven = list.get(j).getEvalSeven();
					int evalEight = list.get(j).getEvalEight();
					int evalNine = list.get(j).getEvalNine();
					int evalTen = list.get(j).getEvalTen();
					
					schedule.get(i).setEvalNo(evalNo);
					schedule.get(i).setEvalOne(evalOne);
					schedule.get(i).setEvalTwo(evalTwo);
					schedule.get(i).setEvalThree(evalThree);
					schedule.get(i).setEvalFour(evalFour);
					schedule.get(i).setEvalFive(evalFive);
					schedule.get(i).setEvalSix(evalSix);
					schedule.get(i).setEvalSeven(evalSeven);
					schedule.get(i).setEvalEight(evalEight);
					schedule.get(i).setEvalNine(evalNine);
					schedule.get(i).setEvalTen(evalTen);
    			}
    		}
    	}
    	
    	mv.addObject("schedule", schedule);
    	
    	mv.setViewName("lectureManagement/lecture_evaluation_select");
    	
    	return mv;
    }
    
    /**
     * 학생 강의 평가 제출
     * @param evaluation
     * @return
     */
    @ResponseBody
    @RequestMapping("lecture_evaluation_submit.do")
    public String lectureEvaluationSubmit(LectureEvaluation evaluation)
    {
    	int result = leService.evaluationSubmit(evaluation);
    	
    	if(result > 0)
    	{
    		return "ok";
    	}
    	else
    	{
    		return "fail";
    	}
    }

    /**
     * 2. 강의 평가 학생 목록 조회 (교수)
     *
     * @return
     */
    @RequestMapping("lecture_evaluation_check.do")
    public String lectureEvaluationCheck() 
    {
        return "lectureManagement/lecture_evaluation_check";
    }
    
    /*
	@ResponseBody
	@RequestMapping("professorLecture.do")
	public ModelAndView ProfessorSchedule(ModelAndView mv, Model model, EvaluationResult evaluation, HttpSession session)
	{
		Professor professor = (Professor)session.getAttribute("loginUser");
		evaluation.setProfId(professor.getProfId());
		
		ArrayList<EvaluationResult> result = leService.selectProfSchdule(evaluation);
		
		ArrayList<EvaluationResult> list = new ArrayList<>();

		for(int i = 0; i < result.size() - 1; i++)
		{
			for(int j = i + 1; j < result.size(); j++)
			{
				System.out.println(i + " : " + j + " = " + (result.get(i).getClassSeq() == result.get(j).getClassSeq()));
				
				if(result.get(j).getClassSeq() == result.get(i).getClassSeq())
				{
					int evalOne = result.get(i).getEvalOne() + result.get(j).getEvalOne();
					int evalTwo = result.get(i).getEvalTwo() + result.get(j).getEvalTwo();
					int evalThree = result.get(i).getEvalThree() + result.get(j).getEvalThree();
					int evalFour = result.get(i).getEvalFour() + result.get(j).getEvalFour();
					int evalFive = result.get(i).getEvalFive() + result.get(j).getEvalFive();
					int evalSix = result.get(i).getEvalSix() + result.get(j).getEvalSix();
					int evalSeven = result.get(i).getEvalSeven() + result.get(j).getEvalSeven();
					int evalEight = result.get(i).getEvalEight() + result.get(j).getEvalEight();
					int evalNine = result.get(i).getEvalNine() + result.get(j).getEvalNine();
					int evalTen = result.get(i).getEvalTen() + result.get(j).getEvalTen();
					
					result.get(i).setEvalOne(evalOne);
					result.get(i).setEvalTwo(evalTwo);
					result.get(i).setEvalThree(evalThree);
					result.get(i).setEvalFour(evalFour);
					result.get(i).setEvalFive(evalFive);
					result.get(i).setEvalSix(evalSix);
					result.get(i).setEvalSeven(evalSeven);
					result.get(i).setEvalEight(evalEight);
					result.get(i).setEvalNine(evalNine);
					result.get(i).setEvalTen(evalTen);
					
					list.add(result.get(i));
				}
				else
				{
					list.add(result.get(j));
				}
			}
		}
		
		ArrayList<EvaluationResult> schedule = new ArrayList<>();
		
		for(EvaluationResult l : list)
		{
			if(!schedule.contains(l))
			{
				schedule.add(l);
			}
		}

		mv.addObject("schedule", schedule);

		mv.setViewName("lectureManagement/lecture_evaluation_check");

		return mv;
	}
	*/
    
    @ResponseBody
	@RequestMapping("professorLecture.do")
	public ModelAndView ProfessorSchedule(ModelAndView mv, Model model, EvaluationResult evaluation, HttpSession session)
	{
		Professor professor = (Professor)session.getAttribute("loginUser");
		evaluation.setProfId(professor.getProfId());
		
		ArrayList<EvaluationResult> result = leService.selectProfSchdule(evaluation);
		ArrayList<EvaluationResult> list = leService.selectProfEvaluation(evaluation);
		ArrayList<EvaluationResult> sum = new ArrayList<>();
		
		if(list.size() > 1)
		{
			for(int i = 0; i < list.size() - 1; i++)
			{
				for(int j = i + 1; j < list.size(); j++)
				{
					if(list.get(j).getClassSeq() == list.get(i).getClassSeq())
					{
						int evalOne = list.get(i).getEvalOne() + list.get(j).getEvalOne();
						int evalTwo = list.get(i).getEvalTwo() + list.get(j).getEvalTwo();
						int evalThree = list.get(i).getEvalThree() + list.get(j).getEvalThree();
						int evalFour = list.get(i).getEvalFour() + list.get(j).getEvalFour();
						int evalFive = list.get(i).getEvalFive() + list.get(j).getEvalFive();
						int evalSix = list.get(i).getEvalSix() + list.get(j).getEvalSix();
						int evalSeven = list.get(i).getEvalSeven() + list.get(j).getEvalSeven();
						int evalEight = list.get(i).getEvalEight() + list.get(j).getEvalEight();
						int evalNine = list.get(i).getEvalNine() + list.get(j).getEvalNine();
						int evalTen = list.get(i).getEvalTen() + list.get(j).getEvalTen();
						
						list.get(i).setEvalOne(evalOne);
						list.get(i).setEvalTwo(evalTwo);
						list.get(i).setEvalThree(evalThree);
						list.get(i).setEvalFour(evalFour);
						list.get(i).setEvalFive(evalFive);
						list.get(i).setEvalSix(evalSix);
						list.get(i).setEvalSeven(evalSeven);
						list.get(i).setEvalEight(evalEight);
						list.get(i).setEvalNine(evalNine);
						list.get(i).setEvalTen(evalTen);
						
						int p = j;
						p++;
						list.get(i).setPerson(p);
						
						sum.add(list.get(i));
						list.get(j).setClassSeq(0);
					}
					else
					{
						sum.add(list.get(j));
					}
				}
			}
		}
		
		if(sum.size() > 0)
		{
			for(int i = 0; i < result.size(); i++)
			{
				for(int j = 0; j < sum.size(); j++)
				{
					if(result.get(i).getClassSeq() == sum.get(j).getClassSeq())
					{
	    				int evalNo = sum.get(j).getEvalNo();
						int evalOne = sum.get(j).getEvalOne();
						int evalTwo = sum.get(j).getEvalTwo();
						int evalThree = sum.get(j).getEvalThree();
						int evalFour = sum.get(j).getEvalFour();
						int evalFive = sum.get(j).getEvalFive();
						int evalSix = sum.get(j).getEvalSix();
						int evalSeven = sum.get(j).getEvalSeven();
						int evalEight = sum.get(j).getEvalEight();
						int evalNine = sum.get(j).getEvalNine();
						int evalTen = sum.get(j).getEvalTen();
						int person = sum.get(j).getPerson();
						
						result.get(i).setEvalOne(evalOne);
						result.get(i).setEvalTwo(evalTwo);
						result.get(i).setEvalThree(evalThree);
						result.get(i).setEvalFour(evalFour);
						result.get(i).setEvalFive(evalFive);
						result.get(i).setEvalSix(evalSix);
						result.get(i).setEvalSeven(evalSeven);
						result.get(i).setEvalEight(evalEight);
						result.get(i).setEvalNine(evalNine);
						result.get(i).setEvalTen(evalTen);
						result.get(i).setPerson(person);
					}
				}
			}
		}
		
		mv.addObject("schedule", result);

		mv.setViewName("lectureManagement/lecture_evaluation_check");

		return mv;
	}

    /**
     * 2_1. 강의 평가 상세 페이지 조회(교수)
     *
     * @return
     */
	@ResponseBody
    @RequestMapping("lecture_evaluation_detail.do")
    public String lectureEvaluationDetail() 
    {
        return "lectureManagement/lecture_evaluation_detail";
    }
	
	@ResponseBody
    @RequestMapping("selectEvaluationDetail.do")
    public ModelAndView lectureEvaluationDetail(ModelAndView mv, Model model, EvaluationResult evaluation, HttpSession session) 
    {
		Professor professor = (Professor)session.getAttribute("loginUser");
		evaluation.setProfId(professor.getProfId());

		ArrayList<EvaluationResult> result = leService.selectEvaluationDetail(evaluation);
	
		mv.addObject("evaluation", result);

		mv.setViewName("lectureManagement/lecture_evaluation_detail");

		return mv;
    }
    
    // 강의 평가 자신이 듣고 있는 창 선택을 교수는 자신이 강의하는 강의 목록을 나오게 한다 
    // 자신이 강의하는 강의목록을 누르면 그 강의를 듣는 학생을 전부 조회(강의평가 여부를같이 조회할수 있도록한다.)
    // 위의 학생중 한명을 누르면 강의평가한 내용을 볼수 있도록 한다
    // 처리중 고민해야할건 교수입장에서 학생들의 강의평가를 조회할때 그 학생의 개인정보를 같이 띄워준다면 그 학생이 누군지 알아볼수 있게 할것인가?
   // 아니면 학생이름과 학번은 "xxxx" 이런 식으로 띄워서 누군지 모르게 할것인가.)
	
}