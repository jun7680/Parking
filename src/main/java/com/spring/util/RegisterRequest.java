package com.spring.util;

public class RegisterRequest {
	
	private String id;
	private String pw;
	private String name;
	private String age;
	private String gender;
	private String phone;
	private String email;
	private String cpw;
	
	
	public boolean isPwEqualToCheckPw() {
		return pw.equals(cpw);
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
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


	public String getCpw() {
		return cpw;
	}


	public void setCpw(String cpw) {
		this.cpw = cpw;
	}
	
	
	
	
	

}
