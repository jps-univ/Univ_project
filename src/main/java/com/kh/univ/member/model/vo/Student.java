package com.kh.univ.member.model.vo;

import java.sql.Date;

public class Student {
	
	private int stdId;				 // 학생번호(학번)
	private String stdPwd;			 // 비밀번호
	private String stdName;			 // 이름
	private String stdBirth;		 // 주민번호
	private String stdCollege;		 // 단과대학
	private String stdDepartment;	 // 학부(과)
	private String stdCourse;		 // 과정
	private String stdSemester;		 // 학기
	private String stdEnterDiv;		 // 입학구분
	private String stdImage;		 // 이미지
	private String stdTuition;		 // 등록금
    private String stdSchoolReg;	 // 학적
	private String stdPhone;		 // 핸드폰번호
	private String stdEmail;		 // 이메일
	private String stdAddress;		 // 주소
	private String stdAddressDetail; //	상세주소
	private String stdBank;			 // 은행명
	private String stdAccount;		 // 계좌번호
	private String stdAccountHolder; // 예금주명
	private String stdSmsAgree;	 	 // sms동의
	private String stdEmailAgree;	 // 이메일동의
	private String stdEntrance;		 // 입학일자
	private String stdTel;			 // 전화번호
	
	public Student() {}
	
	// 로그인 매개변수
	public Student(int stdId, String stdPwd) 
	{
		super();
		this.stdId = stdId;
		this.stdPwd = stdPwd;
	}
	
	// 전체 매개변수
	public Student(int stdId, String stdPwd, String stdName, String stdBirth, String stdCollege, String stdDepartment, String stdCourse, String stdSemester, String stdEnterDiv, String stdImage, String stdTuition, String stdSchoolReg, String stdPhone, String stdEmail, String stdAddress, String stdAddressDetail, String stdBank, String stdAccount, String stdAccountHolder, String stdSmsAgree, String stdEmailAgree, String stdEntrance, String stdTel) 
	{
		super();
		this.stdId = stdId;
		this.stdPwd = stdPwd;
		this.stdName = stdName;
		this.stdBirth = stdBirth;
		this.stdCollege = stdCollege;
		this.stdDepartment = stdDepartment;
		this.stdCourse = stdCourse;
		this.stdSemester = stdSemester;
		this.stdEnterDiv = stdEnterDiv;
		this.stdImage = stdImage;
		this.stdTuition = stdTuition;
		this.stdSchoolReg = stdSchoolReg;
		this.stdPhone = stdPhone;
		this.stdEmail = stdEmail;
		this.stdAddress = stdAddress;
		this.stdAddressDetail = stdAddressDetail;
		this.stdBank = stdBank;
		this.stdAccount = stdAccount;
		this.stdAccountHolder = stdAccountHolder;
		this.stdSmsAgree = stdSmsAgree;
		this.stdEmailAgree = stdEmailAgree;
		this.stdEntrance = stdEntrance;
		this.stdTel = stdTel;
	}
	
	// 개인정보 변경 매개변수
	public Student(String stdPhone, String stdEmail, String stdAddress, String stdAddressDetail, String stdBank, String stdAccount, String stdAccountHolder, String stdTel) {
		super();
		this.stdPhone = stdPhone;
		this.stdEmail = stdEmail;
		this.stdAddress = stdAddress;
		this.stdAddressDetail = stdAddressDetail;
		this.stdBank = stdBank;
		this.stdAccount = stdAccount;
		this.stdAccountHolder = stdAccountHolder;
		this.stdTel = stdTel;
	}

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public String getStdPwd() {
		return stdPwd;
	}

	public void setStdPwd(String stdPwd) {
		this.stdPwd = stdPwd;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	public String getStdBirth() {
		return stdBirth;
	}

	public void setStdBirth(String stdBirth) {
		this.stdBirth = stdBirth;
	}

	public String getStdCollege() {
		return stdCollege;
	}

	public void setStdCollege(String stdCollege) {
		this.stdCollege = stdCollege;
	}

	public String getStdDepartment() {
		return stdDepartment;
	}

	public void setStdDepartment(String stdDepartment) {
		this.stdDepartment = stdDepartment;
	}

	public String getStdCourse() {
		return stdCourse;
	}

	public void setStdCourse(String stdCourse) {
		this.stdCourse = stdCourse;
	}

	public String getStdSemester() {
		return stdSemester;
	}

	public void setStdSemester(String stdSemester) {
		this.stdSemester = stdSemester;
	}

	public String getStdEnterDiv() {
		return stdEnterDiv;
	}

	public void setStdEnterDiv(String stdEnterDiv) {
		this.stdEnterDiv = stdEnterDiv;
	}

	public String getStdImage() {
		return stdImage;
	}

	public void setStdImage(String stdImage) {
		this.stdImage = stdImage;
	}

	public String getStdTuition() {
		return stdTuition;
	}

	public void setStdTuition(String stdTuition) {
		this.stdTuition = stdTuition;
	}

	public String getStdSchoolReg() {
		return stdSchoolReg;
	}

	public void setStdSchoolReg(String stdSchoolReg) {
		this.stdSchoolReg = stdSchoolReg;
	}

	public String getStdPhone() {
		return stdPhone;
	}

	public void setStdPhone(String stdPhone) {
		this.stdPhone = stdPhone;
	}

	public String getStdEmail() {
		return stdEmail;
	}

	public void setStdEmail(String stdEmail) {
		this.stdEmail = stdEmail;
	}

	public String getStdAddress() {
		return stdAddress;
	}

	public void setStdAddress(String stdAddress) {
		this.stdAddress = stdAddress;
	}

	public String getStdAddressDetail() {
		return stdAddressDetail;
	}

	public void setStdAddressDetail(String stdAddressDetail) {
		this.stdAddressDetail = stdAddressDetail;
	}

	public String getStdBank() {
		return stdBank;
	}

	public void setStdBank(String stdBank) {
		this.stdBank = stdBank;
	}

	public String getStdAccount() {
		return stdAccount;
	}

	public void setStdAccount(String stdAccount) {
		this.stdAccount = stdAccount;
	}

	public String getStdAccountHolder() {
		return stdAccountHolder;
	}

	public void setStdAccountHolder(String stdAccountHolder) {
		this.stdAccountHolder = stdAccountHolder;
	}

	public String getStdSmsAgree() {
		return stdSmsAgree;
	}

	public void setStdSmsAgree(String stdSmsAgree) {
		this.stdSmsAgree = stdSmsAgree;
	}

	public String getStdEmailAgree() {
		return stdEmailAgree;
	}

	public void setStdEmailAgree(String stdEmailAgree) {
		this.stdEmailAgree = stdEmailAgree;
	}

	public String getStdEntrance() {
		return stdEntrance;
	}

	public void setStdEntrance(String stdEntrance) {
		this.stdEntrance = stdEntrance;
	}

	public String getStdTel() {
		return stdTel;
	}

	public void setStdTel(String stdTel) {
		this.stdTel = stdTel;
	}

	@Override
	public String toString() {
		return "Student [stdId=" + stdId + ", stdPwd=" + stdPwd + ", stdName=" + stdName + ", stdBirth=" + stdBirth
				+ ", stdCollege=" + stdCollege + ", stdDepartment=" + stdDepartment + ", stdCourse=" + stdCourse
				+ ", stdSemester=" + stdSemester + ", stdEnterDiv=" + stdEnterDiv + ", stdImage=" + stdImage
				+ ", stdTuition=" + stdTuition + ", stdSchoolReg=" + stdSchoolReg + ", stdPhone=" + stdPhone
				+ ", stdEmail=" + stdEmail + ", stdAddress=" + stdAddress + ", stdAddressDetail=" + stdAddressDetail
				+ ", stdBank=" + stdBank + ", stdAccount=" + stdAccount + ", stdAccountHolder=" + stdAccountHolder
				+ ", stdSmsAgree=" + stdSmsAgree + ", stdEmailAgree=" + stdEmailAgree + ", stdEntrance=" + stdEntrance
				+ ", stdTel=" + stdTel + "]";
	}
	
	

	
	
	
	
}
