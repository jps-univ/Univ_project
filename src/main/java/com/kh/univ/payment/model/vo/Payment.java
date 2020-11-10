package com.kh.univ.payment.model.vo;

public class Payment {
	
	private int paymentNo;              // 등록금번호
	private int stdId;				     // 학생번호(학번)
	private String schoolYear;           // 년도(학년도)
	private int stdSemester;                // 학기
	private String dueDate;              // 등록일자(납부일)
	private String paymentAmount;        // 등록금액(장학금제외금액합산)
	private String totalScholarships;    // 사전감면(장학금합산)
	private String totalPayments;         // 납부금액(납부총액)
	private String stdName;              // 이름
	private String stdBirth;             // 생년월일
	private String stdCollege;           // 학과
	private String stdAddress;              // 주소
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

	public Payment(int paymentNo, String schoolYear, int stdSemester, String dueDate, String paymentAmount,
			String totalScholarships, String totalPayments) {
		super();
		this.paymentNo = paymentNo;
		this.schoolYear = schoolYear;
		this.stdSemester = stdSemester;
		this.dueDate = dueDate;
		this.paymentAmount = paymentAmount;
		this.totalScholarships = totalScholarships;
		this.totalPayments = totalPayments;
	}

	public Payment(int paymentNo, int stdId, String schoolYear, int stdSemester, String dueDate, String paymentAmount,
			String totalScholarships, String totalPayments, String stdName, String stdBirth, String stdCollege,
			String stdAddress, String entranceFee, String schoolFee, String campusScholarship, String suburbanScholartship,
			String nationalScholarship, String paperGuidanceFee, String studentFees, String alumniFee,
			String makePaymentDate) {
		super();
		this.paymentNo = paymentNo;
		this.stdId = stdId;
		this.schoolYear = schoolYear;
		this.stdSemester = stdSemester;
		this.dueDate = dueDate;
		this.paymentAmount = paymentAmount;
		this.totalScholarships = totalScholarships;
		this.totalPayments = totalPayments;
		this.stdName = stdName;
		this.stdBirth = stdBirth;
		this.stdCollege = stdCollege;
		this.stdAddress = stdAddress;
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

	public int getPaymentNo() {
		return paymentNo;
	}

	public void setPaymentNo(int paymentNo) {
		this.paymentNo = paymentNo;
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

	public int getStdSemester() {
		return stdSemester;
	}

	public void setStdSemester(int stdSemester) {
		this.stdSemester = stdSemester;
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

	public String getTotalPayments() {
		return totalPayments;
	}

	public void setTotalPayments(String totalPayments) {
		this.totalPayments = totalPayments;
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

	public String getStdAddress() {
		return stdAddress;
	}

	public void setStdAddress(String stdAddress) {
		this.stdAddress = stdAddress;
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
		return "Payment [paymentNo=" + paymentNo + ", stdId=" + stdId + ", schoolYear=" + schoolYear + ", stdSemester="
				+ stdSemester + ", dueDate=" + dueDate + ", paymentAmount=" + paymentAmount + ", totalScholarships="
				+ totalScholarships + ", totalPayments=" + totalPayments + ", stdName=" + stdName + ", stdBirth="
				+ stdBirth + ", stdCollege=" + stdCollege + ", stdAddress=" + stdAddress + ", entranceFee="
				+ entranceFee + ", schoolFee=" + schoolFee + ", campusScholarship=" + campusScholarship
				+ ", suburbanScholartship=" + suburbanScholartship + ", nationalScholarship=" + nationalScholarship
				+ ", paperGuidanceFee=" + paperGuidanceFee + ", studentFees=" + studentFees + ", alumniFee=" + alumniFee
				+ ", makePaymentDate=" + makePaymentDate + "]";
	}

	
	
}
