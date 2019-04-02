package com.spring.dto;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class AmountVO {
	
	private String AMOUNT;
	private String AREA;
	
	
	public String getAMOUNT() {
		return AMOUNT;
	}
	public void setAMOUNT(String aMOUNT) {
		AMOUNT = aMOUNT;
	}
	public String getAREA() {
		return AREA;
	}
	public void setAREA(String aREA) {
		AREA = aREA;
	}
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
	}
	
	

}
