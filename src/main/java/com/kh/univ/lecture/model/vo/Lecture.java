package com.kh.univ.lecture.model.vo;

import java.util.ArrayList;
import java.util.List;

public class Lecture {
    private String classId;
    private int profId;
    private String department;
    private String className;
    private String roomNo;
    private String classType;
    private String gradeSize; //학점
    private String classSemester;
    private String classYear;
    private String approve;

    private String lectureTime;



    public Lecture() {
    }

    public Lecture(String classId, int profId, String department, String className, String roomNo, String classType, String gradeSize, String classSemester, String classYear, String approve, String lectureTime) {
        this.classId = classId;
        this.profId = profId;
        this.department = department;
        this.className = className;
        this.roomNo = roomNo;
        this.classType = classType;
        this.gradeSize = gradeSize;
        this.classSemester = classSemester;
        this.classYear = classYear;
        this.approve = approve;
        this.lectureTime = lectureTime;
    }

    public String getLectureTime() {
        return lectureTime;
    }

    public void setLectureTime(String lectureTime) {
        this.lectureTime = lectureTime;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public int getProfId() {
        return profId;
    }

    public void setProfId(int profId) {
        this.profId = profId;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public String getClassType() {
        return classType;
    }

    public void setClassType(String classType) {
        this.classType = classType;
    }

    public String getGradeSize() {
        return gradeSize;
    }

    public void setGradeSize(String gradeSize) {
        this.gradeSize = gradeSize;
    }

    public String getClassSemester() {
        return classSemester;
    }

    public void setClassSemester(String classSemester) {
        this.classSemester = classSemester;
    }

    public String getClassYear() {
        return classYear;
    }

    public void setClassYear(String classYear) {
        this.classYear = classYear;
    }

    public String getApprove() {
        return approve;
    }

    public void setApprove(String approve) {
        this.approve = approve;
    }

    @Override
    public String toString() {
        return "Lecture{" +
                "classId='" + classId + '\'' +
                ", profId=" + profId +
                ", department='" + department + '\'' +
                ", className='" + className + '\'' +
                ", roomNo='" + roomNo + '\'' +
                ", classType='" + classType + '\'' +
                ", gradeSize='" + gradeSize + '\'' +
                ", classSemester='" + classSemester + '\'' +
                ", classYear='" + classYear + '\'' +
                ", approve='" + approve + '\'' +
                ", lectureTime=" + lectureTime +
                '}';
    }
}
