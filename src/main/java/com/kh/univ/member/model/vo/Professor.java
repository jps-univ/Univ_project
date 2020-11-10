package com.kh.univ.member.model.vo;

public class Professor {
	
	private int profId;				 	// 교수번호(교번)
	private String profPwd;			 	// 비밀번호
	private String profName;			// 이름
	private String profBirth;			// 주민번호
	private String profCollege;			// 단과대학
	private String profDepartment;	 	// 학부(과)
	private String profImage;			// 이미지
	private String profSalary;			// 월급
    private String profTel;				// 전화번호
	private String profPhone;			// 핸드폰번호
	private String profEmail;			// 이메일
	private String profAddress;			// 주소
	private String profAddressDetail;	// 상세주소
	private String profBank;			// 은행명
	private String profAccount;			// 계좌번호
	private String profAccountHolder;	// 예금주명
	private String profSmsAgree;		// sms동의
	private String profEmailAgree;		// 이메일동의
	private String lab;					// 연구실
	private String status;				// 신분
	
	// 조인 값 
	private String collegeName;
	private String departmentName;
	private String collegeCode;
	
	
	
	public Professor() {}

	// 전제 DB조회
	public Professor(int profId, String profPwd, String profName, String profBirth, String profCollege, String profDepartment, String profImage, String profSalary, String profTel, String profPhone, String profEmail, String profAddress, String profAddressDetail, String profBank, String profAccount, String profAccountHolder, String profSmsAgree, String profEmailAgree, String lab, String status) 
	{
		super();
		this.profId = profId;
		this.profPwd = profPwd;
		this.profName = profName;
		this.profBirth = profBirth;
		this.profCollege = profCollege;
		this.profDepartment = profDepartment;
		this.profImage = profImage;
		this.profSalary = profSalary;
		this.profTel = profTel;
		this.profPhone = profPhone;
		this.profEmail = profEmail;
		this.profAddress = profAddress;
		this.profAddressDetail = profAddressDetail;
		this.profBank = profBank;
		this.profAccount = profAccount;
		this.profAccountHolder = profAccountHolder;
		this.profSmsAgree = profSmsAgree;
		this.profEmailAgree = profEmailAgree;
		this.lab = lab;
		this.status = status;
	}
	
	
	// 관리자
	public Professor(int profId, String profPwd, String profName, String profBirth, String profCollege,
			String profDepartment, String profImage, String profSalary, String profTel, String profPhone,
			String profEmail, String profAddress, String profAddressDetail, String profBank, String profAccount,
			String profAccountHolder, String profSmsAgree, String profEmailAgree, String lab, String status,
			String collegeName, String departmentName) {
		super();
		this.profId = profId;
		this.profPwd = profPwd;
		this.profName = profName;
		this.profBirth = profBirth;
		this.profCollege = profCollege;
		this.profDepartment = profDepartment;
		this.profImage = profImage;
		this.profSalary = profSalary;
		this.profTel = profTel;
		this.profPhone = profPhone;
		this.profEmail = profEmail;
		this.profAddress = profAddress;
		this.profAddressDetail = profAddressDetail;
		this.profBank = profBank;
		this.profAccount = profAccount;
		this.profAccountHolder = profAccountHolder;
		this.profSmsAgree = profSmsAgree;
		this.profEmailAgree = profEmailAgree;
		this.lab = lab;
		this.status = status;
		this.collegeName = collegeName;
		this.departmentName = departmentName;
	}

	public int getProfId() {
		return profId;
	}

	public void setProfId(int profId) {
		this.profId = profId;
	}

	public String getProfPwd() {
		return profPwd;
	}

	public void setProfPwd(String profPwd) {
		this.profPwd = profPwd;
	}

	public String getProfName() {
		return profName;
	}

	public void setProfName(String profName) {
		this.profName = profName;
	}

	public String getProfBirth() {
		return profBirth;
	}

	public void setProfBirth(String profBirth) {
		this.profBirth = profBirth;
	}

	public String getProfCollege() {
		return profCollege;
	}

	public void setProfCollege(String profCollege) {
		this.profCollege = profCollege;
	}

	public String getProfDepartment() {
		return profDepartment;
	}

	public void setProfDepartment(String profDepartment) {
		this.profDepartment = profDepartment;
	}

	public String getProfImage() {
		return profImage;
	}

	public void setProfImage(String profImage) {
		this.profImage = profImage;
	}

	public String getProfSalary() {
		return profSalary;
	}

	public void setProfSalary(String profSalary) {
		this.profSalary = profSalary;
	}

	public String getProfTel() {
		return profTel;
	}

	public void setProfTel(String profTel) {
		this.profTel = profTel;
	}

	public String getProfPhone() {
		return profPhone;
	}

	public void setProfPhone(String profPhone) {
		this.profPhone = profPhone;
	}

	public String getProfEmail() {
		return profEmail;
	}

	public void setProfEmail(String profEmail) {
		this.profEmail = profEmail;
	}

	public String getProfAddress() {
		return profAddress;
	}

	public void setProfAddress(String profAddress) {
		this.profAddress = profAddress;
	}

	public String getProfAddressDetail() {
		return profAddressDetail;
	}

	public void setProfAddressDetail(String profAddressDetail) {
		this.profAddressDetail = profAddressDetail;
	}

	public String getProfBank() {
		return profBank;
	}

	public void setProfBank(String profBank) {
		this.profBank = profBank;
	}

	public String getProfAccount() {
		return profAccount;
	}

	public void setProfAccount(String profAccount) {
		this.profAccount = profAccount;
	}

	public String getProfAccountHolder() {
		return profAccountHolder;
	}

	public void setProfAccountHolder(String profAccountHolder) {
		this.profAccountHolder = profAccountHolder;
	}

	public String getProfSmsAgree() {
		return profSmsAgree;
	}

	public void setProfSmsAgree(String profSmsAgree) {
		this.profSmsAgree = profSmsAgree;
	}

	public String getProfEmailAgree() {
		return profEmailAgree;
	}

	public void setProfEmailAgree(String profEmailAgree) {
		this.profEmailAgree = profEmailAgree;
	}

	public String getLab() {
		return lab;
	}

	public void setLab(String lab) {
		this.lab = lab;
	}

	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
	public String getCollegeCode() {
		return collegeCode;
	}

	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}

	@Override
	public String toString() {
		return "Professor [profId=" + profId + ", profPwd=" + profPwd + ", profName=" + profName + ", profBirth="
				+ profBirth + ", profCollege=" + profCollege + ", profDepartment=" + profDepartment + ", profImage="
				+ profImage + ", profSalary=" + profSalary + ", profTel=" + profTel + ", profPhone=" + profPhone
				+ ", profEmail=" + profEmail + ", profAddress=" + profAddress + ", profAddressDetail="
				+ profAddressDetail + ", profBank=" + profBank + ", profAccount=" + profAccount + ", profAccountHolder="
				+ profAccountHolder + ", profSmsAgree=" + profSmsAgree + ", profEmailAgree=" + profEmailAgree + ", lab="
				+ lab + ", status=" + status + ", collegeName=" + collegeName + ", departmentName=" + departmentName
				+ ", collegeCode=" + collegeCode + "]";
	}


	

}