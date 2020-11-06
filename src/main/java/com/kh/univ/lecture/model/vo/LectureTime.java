package com.kh.univ.lecture.model.vo;

public class LectureTime {

     private int ctSeq;
     private int classSeq;
     private String day;
     private String hour;

    public LectureTime() {
    }

    @Override
    public String toString() {
        return "LectureTime{" +
                "ctSeq=" + ctSeq +
                ", classSeq=" + classSeq +
                ", day='" + day + '\'' +
                ", hour='" + hour + '\'' +
                '}';
    }

    public int getCtSeq() {
        return ctSeq;
    }

    public void setCtSeq(int ctSeq) {
        this.ctSeq = ctSeq;
    }

    public int getClassSeq() {
        return classSeq;
    }

    public void setClassSeq(int classSeq) {
        this.classSeq = classSeq;
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

    public LectureTime(int ctSeq, int classSeq, String day, String hour) {
        this.ctSeq = ctSeq;
        this.classSeq = classSeq;
        this.day = day;
        this.hour = hour;
    }
}

