package com.kh.univ.payment.model.vo;

public class Payment {
	
	private int stdId;				     // 학생번호(학번)
	private String schoolYear;           // 년도(학년도)
	private String semester;                // 학기
	private String dueDate;              // 등록일자(납부일)
	private String paymentAmount;        // 등록금액(장학금제외금액합산)
	private String totalScholarships;    // 사전감면(장학금합산)
	private String totalPayment;         // 납부금액(납부총액)
	private String stdName;              // 이름
	private String birth_No;             // 생년월일
	private String department;           // 학과
	private String address;              // 주소
	private String entranceFee;          // 입학금
	private String schoolFee;            // 수업료
	private String campusScholarship;    // 교내장학금
	private String suburbanScholartship; // 교외장학금
	private String nationalScholarship;  // 국가장학금
	private String paperGuidanceFee;     // 논문지도비
	private String studentFees;          // 학생회비
	private String alumniFee;            // 동문회비
	private String makePaymentDate;      // 납부확인일
	
	public Payment() {}

	public Payment(String schoolYear, String semester, String dueDate, String paymentAmount, String totalScholarships,
			String totalPayment) {
		super();
		this.schoolYear = schoolYear;
		this.semester = semester;
		this.dueDate = dueDate;
		this.paymentAmount = paymentAmount;
		this.totalScholarships = totalScholarships;
		this.totalPayment = totalPayment;
	}

	public Payment(int stdId, String schoolYear, String semester, String dueDate, String paymentAmount,
			String totalScholarships, String totalPayment, String stdName, String birth_No, String department,
			String address, String entranceFee, String schoolFee, String campusScholarship, String suburbanScholartship,
			String nationalScholarship, String paperGuidanceFee, String studentFees, String alumniFee,
			String makePaymentDate) {
		super();
		this.stdId = stdId;
		this.schoolYear = schoolYear;
		this.semester = semester;
		this.dueDate = dueDate;
		this.paymentAmount = paymentAmount;
		this.totalScholarships = totalScholarships;
		this.totalPayment = totalPayment;
		this.stdName = stdName;
		this.birth_No = birth_No;
		this.department = department;
		this.address = address;
		this.entranceFee = entranceFee;
		this.schoolFee = schoolFee;
		this.campusScholarship = campusScholarship;
		this.suburbanScholartship = suburbanScholartship;
		this.nationalScholarship = nationalScholarship;
		this.paperGuidanceFee = paperGuidanceFee;
		this.studentFees = studentFees;
		this.alumniFee = alumniFee;
		this.makePaymentDate = makePaymentDate;
	}

	public int getStdId() {
		return stdId;
	}

	public void setStdId(int stdId) {
		this.stdId = stdId;
	}

	public String getSchoolYear() {
		return schoolYear;
	}

	public void setSchoolYear(String schoolYear) {
		this.schoolYear = schoolYear;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getDueDate() {
		return dueDate;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}

	public String getPaymentAmount() {
		return paymentAmount;
	}

	public void setPaymentAmount(String paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public String getTotalScholarships() {
		return totalScholarships;
	}

	public void setTotalScholarships(String totalScholarships) {
		this.totalScholarships = totalScholarships;
	}

	public String getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(String totalPayment) {
		this.totalPayment = totalPayment;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	public String getBirth_No() {
		return birth_No;
	}

	public void setBirth_No(String birth_No) {
		this.birth_No = birth_No;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEntranceFee() {
		return entranceFee;
	}

	public void setEntranceFee(String entranceFee) {
		this.entranceFee = entranceFee;
	}

	public String getSchoolFee() {
		return schoolFee;
	}

	public void setSchoolFee(String schoolFee) {
		this.schoolFee = schoolFee;
	}

	public String getCampusScholarship() {
		return campusScholarship;
	}

	public void setCampusScholarship(String campusScholarship) {
		this.campusScholarship = campusScholarship;
	}

	public String getSuburbanScholartship() {
		return suburbanScholartship;
	}

	public void setSuburbanScholartship(String suburbanScholartship) {
		this.suburbanScholartship = suburbanScholartship;
	}

	public String getNationalScholarship() {
		return nationalScholarship;
	}

	public void setNationalScholarship(String nationalScholarship) {
		this.nationalScholarship = nationalScholarship;
	}

	public String getPaperGuidanceFee() {
		return paperGuidanceFee;
	}

	public void setPaperGuidanceFee(String paperGuidanceFee) {
		this.paperGuidanceFee = paperGuidanceFee;
	}

	public String getStudentFees() {
		return studentFees;
	}

	public void setStudentFees(String studentFees) {
		this.studentFees = studentFees;
	}

	public String getAlumniFee() {
		return alumniFee;
	}

	public void setAlumniFee(String alumniFee) {
		this.alumniFee = alumniFee;
	}

	public String getMakePaymentDate() {
		return makePaymentDate;
	}

	public void setMakePaymentDate(String makePaymentDate) {
		this.makePaymentDate = makePaymentDate;
	}

	@Override
	public String toString() {
		return "Payment [stdId=" + stdId + ", schoolYear=" + schoolYear + ", semester=" + semester + ", dueDate="
				+ dueDate + ", paymentAmount=" + paymentAmount + ", totalScholarships=" + totalScholarships
				+ ", totalPayment=" + totalPayment + ", stdName=" + stdName + ", birth_No=" + birth_No + ", department="
				+ department + ", address=" + address + ", entranceFee=" + entranceFee + ", schoolFee=" + schoolFee
				+ ", campusScholarship=" + campusScholarship + ", suburbanScholartship=" + suburbanScholartship
				+ ", nationalScholarship=" + nationalScholarship + ", paperGuidanceFee=" + paperGuidanceFee
				+ ", studentFees=" + studentFees + ", alumniFee=" + alumniFee + ", makePaymentDate=" + makePaymentDate
				+ "]";
	}

	

}
