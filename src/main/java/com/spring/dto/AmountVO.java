package com.spring.dto;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class AmountVO {
	
	private String AMOUNT;
	private String AREA;
	private String CARNUMBER;
	private String ENDTIME;
	private String REGION;
	private String ID;
	private String STARTTIME;
	
	
	
	
	

	
	public String getSTARTTIME() {
		return STARTTIME;
	}
	public void setSTARTTIME(String STARTTIME) {
		this.STARTTIME = STARTTIME;
	}
	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getREGION() {
		return REGION;
	}
	public void setREGION(String REGION) {
		this.REGION = REGION;
	}

	public String getENDTIME() {
		return ENDTIME;
	}
	
	public void setENDTIME(String ENDTIME) {
		this.ENDTIME = ENDTIME;
	}
	
	public String getCARNUMBER() {
		return CARNUMBER;
	}
	public void setCARNUMBER(String CARNUMBER) {
		this.CARNUMBER = CARNUMBER;
	}
	public String getAMOUNT() {
		return AMOUNT;
	}
	public void setAMOUNT(String AMOUNT) {
		this.AMOUNT = AMOUNT;
	}
	public String getAREA() {
		return AREA;
	}
	public void setAREA(String AREA) {
		this.AREA = AREA;
	}
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
	}
	
	

}
