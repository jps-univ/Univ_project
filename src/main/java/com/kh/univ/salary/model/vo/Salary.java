package com.kh.univ.salary.model.vo;

public class Salary {
	
	private int profId;                        // 교수번호
	private String schoolYear;                 // 지급년도
	private String schoolMonth;                // 지급월
	private String bank;                       // 지급은행
	private String account;                    // 지급계좌
	private String salaryTotal;                // 실지급액(급여총액)
	private String name;                       // 이름
	private String profCollege;                // 소속(단과대학)
	private String birth_No;                   // 생년월일
	private String patment_date;               // 지급일
	private String basic_Salary;               // 기본급여
	private String overtime;                   // 시간외수당
	private String bonus;                      // 상여금
	private String incentive;                  // 성과급
	private String meals;                      // 식대
	private String education;                  // 교육지원
	private String income_Tax;                 // 소득세
	private String national_Pension;           // 국민연금
	private String health_Insurance;           // 건강보험
	private String care_Insurance;             // 장기요양보험
	private String employment_Insuracne;       // 고용보험
	private String other_Deducation;           // 기타공제
	private String payment_Confirmation_Date;  // 지급확인일
	
	public Salary() {}

	public Salary(String schoolYear, String schoolMonth, String bank, String account, String salaryTotal) {
		super();
		this.schoolYear = schoolYear;
		this.schoolMonth = schoolMonth;
		this.bank = bank;
		this.account = account;
		this.salaryTotal = salaryTotal;
	}

	public Salary(int profId, String schoolYear, String schoolMonth, String bank, String account, String salaryTotal,
			String name, String profCollege, String birth_No, String patment_date, String basic_Salary, String overtime,
			String bonus, String incentive, String meals, String education, String income_Tax, String national_Pension,
			String health_Insurance, String care_Insurance, String employment_Insuracne, String other_Deducation,
			String payment_Confirmation_Date) {
		super();
		this.profId = profId;
		this.schoolYear = schoolYear;
		this.schoolMonth = schoolMonth;
		this.bank = bank;
		this.account = account;
		this.salaryTotal = salaryTotal;
		this.name = name;
		this.profCollege = profCollege;
		this.birth_No = birth_No;
		this.patment_date = patment_date;
		this.basic_Salary = basic_Salary;
		this.overtime = overtime;
		this.bonus = bonus;
		this.incentive = incentive;
		this.meals = meals;
		this.education = education;
		this.income_Tax = income_Tax;
		this.national_Pension = national_Pension;
		this.health_Insurance = health_Insurance;
		this.care_Insurance = care_Insurance;
		this.employment_Insuracne = employment_Insuracne;
		this.other_Deducation = other_Deducation;
		this.payment_Confirmation_Date = payment_Confirmation_Date;
	}

	public int getProfId() {
		return profId;
	}

	public void setProfId(int profId) {
		this.profId = profId;
	}

	public String getSchoolYear() {
		return schoolYear;
	}

	public void setSchoolYear(String schoolYear) {
		this.schoolYear = schoolYear;
	}

	public String getSchoolMonth() {
		return schoolMonth;
	}

	public void setSchoolMonth(String schoolMonth) {
		this.schoolMonth = schoolMonth;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getSalaryTotal() {
		return salaryTotal;
	}

	public void setSalaryTotal(String salaryTotal) {
		this.salaryTotal = salaryTotal;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProfCollege() {
		return profCollege;
	}

	public void setProfCollege(String profCollege) {
		this.profCollege = profCollege;
	}

	public String getBirth_No() {
		return birth_No;
	}

	public void setBirth_No(String birth_No) {
		this.birth_No = birth_No;
	}

	public String getPatment_date() {
		return patment_date;
	}

	public void setPatment_date(String patment_date) {
		this.patment_date = patment_date;
	}

	public String getBasic_Salary() {
		return basic_Salary;
	}

	public void setBasic_Salary(String basic_Salary) {
		this.basic_Salary = basic_Salary;
	}

	public String getOvertime() {
		return overtime;
	}

	public void setOvertime(String overtime) {
		this.overtime = overtime;
	}

	public String getBonus() {
		return bonus;
	}

	public void setBonus(String bonus) {
		this.bonus = bonus;
	}

	public String getIncentive() {
		return incentive;
	}

	public void setIncentive(String incentive) {
		this.incentive = incentive;
	}

	public String getMeals() {
		return meals;
	}

	public void setMeals(String meals) {
		this.meals = meals;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getIncome_Tax() {
		return income_Tax;
	}

	public void setIncome_Tax(String income_Tax) {
		this.income_Tax = income_Tax;
	}

	public String getNational_Pension() {
		return national_Pension;
	}

	public void setNational_Pension(String national_Pension) {
		this.national_Pension = national_Pension;
	}

	public String getHealth_Insurance() {
		return health_Insurance;
	}

	public void setHealth_Insurance(String health_Insurance) {
		this.health_Insurance = health_Insurance;
	}

	public String getCare_Insurance() {
		return care_Insurance;
	}

	public void setCare_Insurance(String care_Insurance) {
		this.care_Insurance = care_Insurance;
	}

	public String getEmployment_Insuracne() {
		return employment_Insuracne;
	}

	public void setEmployment_Insuracne(String employment_Insuracne) {
		this.employment_Insuracne = employment_Insuracne;
	}

	public String getOther_Deducation() {
		return other_Deducation;
	}

	public void setOther_Deducation(String other_Deducation) {
		this.other_Deducation = other_Deducation;
	}

	public String getPayment_Confirmation_Date() {
		return payment_Confirmation_Date;
	}

	public void setPayment_Confirmation_Date(String payment_Confirmation_Date) {
		this.payment_Confirmation_Date = payment_Confirmation_Date;
	}

	@Override
	public String toString() {
		return "Salary [profId=" + profId + ", schoolYear=" + schoolYear + ", schoolMonth=" + schoolMonth + ", bank="
				+ bank + ", account=" + account + ", salaryTotal=" + salaryTotal + ", name=" + name + ", profCollege="
				+ profCollege + ", birth_No=" + birth_No + ", patment_date=" + patment_date + ", basic_Salary="
				+ basic_Salary + ", overtime=" + overtime + ", bonus=" + bonus + ", incentive=" + incentive + ", meals="
				+ meals + ", education=" + education + ", income_Tax=" + income_Tax + ", national_Pension="
				+ national_Pension + ", health_Insurance=" + health_Insurance + ", care_Insurance=" + care_Insurance
				+ ", employment_Insuracne=" + employment_Insuracne + ", other_Deducation=" + other_Deducation
				+ ", payment_Confirmation_Date=" + payment_Confirmation_Date + "]";
	}

	

}
