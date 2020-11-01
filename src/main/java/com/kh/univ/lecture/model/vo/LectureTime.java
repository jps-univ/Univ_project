package com.kh.univ.lecture.model.vo;

public class LectureTime {

     private int lectimeNo;
     private String classId;
     private String day;
     private String hour;

    public LectureTime() {
    }

    public LectureTime(int lectimeNo, String classId, String day, String hour) {
        this.lectimeNo = lectimeNo;
        this.classId = classId;
        this.day = day;
        this.hour = hour;
    }

    public int getLectimeNo() {
        return lectimeNo;
    }

    public void setLectimeNo(int lectimeNo) {
        this.lectimeNo = lectimeNo;
    }

    public String getClassId() {
        return classId;
    }

    public void setClassId(String classId) {
        this.classId = classId;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    @Override
    public String toString() {
        return "LectureTime{" +
                "lectimeNo=" + lectimeNo +
                ", classId=" + classId +
                ", day='" + day + '\'' +
                ", hour='" + hour + '\'' +
                '}';
    }
}

