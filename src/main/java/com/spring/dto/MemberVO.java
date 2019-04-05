package com.spring.dto;

public class MemberVO {
	
	private String ID;
	private String PW;
	private String NAME;
	private String AGE;
	private String GENDER;
	private String PHONE;
	private String EMAIL;
	private int AUTH;
	
	
	
	public int getAUTH() {
		return AUTH;
	}
	public void setAUTH(int AUTH) {
		this.AUTH = AUTH;
	}
	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID=ID;
	}
	
	public String getPW() {
		return PW;		
	}
	
	public void setPW(String PW) {
		this.PW=PW;
	}
	
	public String getNAME() {
		return NAME;
		
	}
	public void setNAME(String NAME) {
		this.NAME=NAME;		
	}
	
	public String getAGE() {
		return AGE;
		
	}
	
	public void setAGE(String AGE) {
		this.AGE=AGE;
	}
	
	
	
	public String getGENDER() {
		return GENDER;
	}
	public void setGENDER(String GENDER) {
		this.GENDER=GENDER;
	}
	
	
	public String getPHONE() {
		return PHONE;
		
	}
	
	public void setPHONE(String PHONE) {
		this.PHONE=PHONE;
	}
	
	
	public String getEMAIL() {
		return EMAIL;
		
	}
	
	public void setEMAIL(String EMAIL) {
		this.EMAIL=EMAIL;
	}
	
	
	
	

}
