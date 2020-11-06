package com.kh.univ.lecture.model.vo;

public class Lecture {
    private int classSeq;
    private String classCode;
    private String deptCode;
    private int profId;
    private String className;
    private String room;
    private int gradeSize; //학점
    private int classSemester;
    private int classYear;
    private String classApprove;
    private int classLevel;
    private String classType;

    private String lectureTime;
    private String profName;

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
                ", lectureTime='" + lectureTime + '\'' +
                ", profName='" + profName + '\'' +
                '}';
    }

    public String getProfName() {
        return profName;
    }

    public void setProfName(String profName) {
        this.profName = profName;
    }

    public Lecture(int classSeq, String classCode, String deptCode, int profId, String className, String room, int gradeSize, int classSemester, int classYear, String classApprove, int classLevel, String classType, String lectureTime, String profName) {
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
        this.lectureTime = lectureTime;
        this.profName = profName;
    }

    public Lecture(){}

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

    public Lecture(int classSeq, String classCode, String deptCode, int profId, String className, String room, int gradeSize, int classSemester, int classYear, String classApprove, int classLevel, String classType, String lectureTime) {
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
        this.lectureTime = lectureTime;
    }
}