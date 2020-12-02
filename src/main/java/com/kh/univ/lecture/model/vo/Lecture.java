package com.kh.univ.lecture.model.vo;

import com.kh.univ.member.model.vo.Professor;
import com.kh.univ.member.model.vo.Student;

public class Lecture 
{
    private int classSeq;			// 시퀀스
    private String classCode;		// 과목코드
    private String deptCode;		// 학과코드
    private int profId;				// 교수번호
    private String className;		// 과목명
    private String room;			// 강의실
    private int gradeSize;			// 학점
    private int classSemester;		// 수강학기
    private int classYear;			// 수강년도
    private String classApprove;	// 강의 승인 여부
    private int classLevel;			// 수강 학년
    private String classType;		// 이수 구분

	private String classOutline;
	private String classTarget;
	private String classBook;



    private String lectureTime;
    private String profName;		// 교수 이름
    
    private LectureTime time;						// 수업시간
    private LectureApplication lectureApplication;	// 수업신청
    private Professor professor;
    private Student student;
    private LectureEvaluation evaluation;			// 강의 평가
	public Lecture() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Lecture(int classSeq, String classCode, String deptCode, int profId, String className, String room, int gradeSize, int classSemester, int classYear, String classApprove, int classLevel, String classType, String classOutline, String classTarget, String classBook, String lectureTime, String profName, LectureTime time, LectureApplication lectureApplication, Professor professor, Student student, LectureEvaluation evaluation) {
		this.classSeq = classSeq;
		this.classCode = classCode;
		this.deptCode = deptCode;
		this.profId = profId;
		this.className = className;
		this.room = room;
		this.gradeSize = gradeSize;
		this.classSemester = classSemester;
		this.classYear = classYear;
		this.classApprove = classApprove;
		this.classLevel = classLevel;
		this.classType = classType;
		this.classOutline = classOutline;
		this.classTarget = classTarget;
		this.classBook = classBook;
		this.lectureTime = lectureTime;
		this.profName = profName;
		this.time = time;
		this.lectureApplication = lectureApplication;
		this.professor = professor;
		this.student = student;
		this.evaluation = evaluation;
	}

	public int getClassSeq() {
		return classSeq;
	}
	public void setClassSeq(int classSeq) {
		this.classSeq = classSeq;
	}
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public int getProfId() {
		return profId;
	}
	public void setProfId(int profId) {
		this.profId = profId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public int getGradeSize() {
		return gradeSize;
	}
	public void setGradeSize(int gradeSize) {
		this.gradeSize = gradeSize;
	}
	public int getClassSemester() {
		return classSemester;
	}
	public void setClassSemester(int classSemester) {
		this.classSemester = classSemester;
	}
	public int getClassYear() {
		return classYear;
	}
	public void setClassYear(int classYear) {
		this.classYear = classYear;
	}
	public String getClassApprove() {
		return classApprove;
	}
	public void setClassApprove(String classApprove) {
		this.classApprove = classApprove;
	}
	public int getClassLevel() {
		return classLevel;
	}
	public void setClassLevel(int classLevel) {
		this.classLevel = classLevel;
	}
	public String getClassType() {
		return classType;
	}
	public void setClassType(String classType) {
		this.classType = classType;
	}
	public String getLectureTime() {
		return lectureTime;
	}
	public void setLectureTime(String lectureTime) {
		this.lectureTime = lectureTime;
	}
	public String getProfName() {
		return profName;
	}
	public void setProfName(String profName) {
		this.profName = profName;
	}
	public LectureTime getTime() {
		return time;
	}
	public void setTime(LectureTime time) {
		this.time = time;
	}
	public LectureApplication getLectureApplication() {
		return lectureApplication;
	}
	public void setLectureApplication(LectureApplication lectureApplication) {
		this.lectureApplication = lectureApplication;
	}
	public Professor getProfessor() {
		return professor;
	}
	public void setProfessor(Professor professor) {
		this.professor = professor;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public LectureEvaluation getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(LectureEvaluation evaluation) {
		this.evaluation = evaluation;
	}

	public String getClassOutline() {
		return classOutline;
	}

	public void setClassOutline(String classOutline) {
		this.classOutline = classOutline;
	}

	public String getClassTarget() {
		return classTarget;
	}

	public void setClassTarget(String classTarget) {
		this.classTarget = classTarget;
	}

	public String getClassBook() {
		return classBook;
	}

	public void setClassBook(String classBook) {
		this.classBook = classBook;
	}

	@Override
	public String toString() {
		return "Lecture{" +
				"classSeq=" + classSeq +
				", classCode='" + classCode + '\'' +
				", deptCode='" + deptCode + '\'' +
				", profId=" + profId +
				", className='" + className + '\'' +
				", room='" + room + '\'' +
				", gradeSize=" + gradeSize +
				", classSemester=" + classSemester +
				", classYear=" + classYear +
				", classApprove='" + classApprove + '\'' +
				", classLevel=" + classLevel +
				", classType='" + classType + '\'' +
				", classOutline='" + classOutline + '\'' +
				", classTarget='" + classTarget + '\'' +
				", classBook='" + classBook + '\'' +
				", lectureTime='" + lectureTime + '\'' +
				", profName='" + profName + '\'' +
				", time=" + time +
				", lectureApplication=" + lectureApplication +
				", professor=" + professor +
				", student=" + student +
				", evaluation=" + evaluation +
				'}';
	}
}