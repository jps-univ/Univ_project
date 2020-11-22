package com.kh.univ.lecture.model.vo;

public class SearchCondition
{
    private String classType;
    private String inputClassName;
    private String collegeCode;
    private String departmentName;
    private String className;
    private int classLevel;

    private int classYear;
    private int classSemester;

    public SearchCondition() {}

    public SearchCondition(String classType, String inputClassName, String collegeCode, String departmentName, String className, int classLevel) {
        this.classType = classType;
        this.inputClassName = inputClassName;
        this.collegeCode = collegeCode;
        this.departmentName = departmentName;
        this.className = className;
        this.classLevel = classLevel;
    }

    public SearchCondition(String classType, String inputClassName, String collegeCode, String departmentName, String className, int classLevel, int classYear, int classSemester) {
        this.classType = classType;
        this.inputClassName = inputClassName;
        this.collegeCode = collegeCode;
        this.departmentName = departmentName;
        this.className = className;
        this.classLevel = classLevel;
        this.classYear = classYear;
        this.classSemester = classSemester;
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

    public String getClassType() {
        return classType;
    }

    public void setClassType(String classType) {
        this.classType = classType;
    }

    public String getInputClassName() {
        return inputClassName;
    }

    public String getCollegeCode() {
        return collegeCode;
    }

    public void setCollegeCode(String collegeCode) {
        this.collegeCode = collegeCode;
    }

    public void setInputClassName(String inputClassName) {
        this.inputClassName = inputClassName;
    }
    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public int getClassLevel() {
        return classLevel;
    }

    public void setClassLevel(int classLevel) {
        this.classLevel = classLevel;
    }

    @Override
    public String toString() {
        return "SearchCondition{" +
                "classType='" + classType + '\'' +
                ", inputClassName='" + inputClassName + '\'' +
                ", collegeName='" + collegeCode + '\'' +
                ", departmentName='" + departmentName + '\'' +
                ", className='" + className + '\'' +
                ", classLevel=" + classLevel +
                '}';
    }
}
