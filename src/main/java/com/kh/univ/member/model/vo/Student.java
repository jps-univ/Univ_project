package com.kh.univ.member.model.vo;

public class Student {
	
	private int key; 				//유저 아이디
 	private String password; 		//유저 비밀번호
	private String name;			//유저 이름
	private String birthDay;		//주민번호
	private String phone;			//휴대전화번호
	private String email; 			//이메일 
	
	public Student() {}
	
	public Student(int key, String password) {
		super();
		this.key = key;
		this.password = password;
	}

	public Student(int key, String password, String name, String birthDay, String phone, String email) {
		super();
		this.key = key;
		this.password = password;
		this.name = name;
		this.birthDay = birthDay;
		this.phone = phone;
		this.email = email;
	}

	public int getKey() {
		return key;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Student [key=" + key + ", password=" + password + ", name=" + name + ", birthDay=" + birthDay
				+ ", phone=" + phone + ", email=" + email + "]";
	}
	
	
	
	
	
}
