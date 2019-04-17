package com.spring.dto;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class CartVO {
	
	private String ID;
	private String AMOUNT;
	private String REGIONNAME;
	private String PAYMENT;
	private String IMAGEURL;
	private String PRODUCTCOUNT;
	
	
	
	/**
	 * @return the pRODUCTCOUNT
	 */
	public String getPRODUCTCOUNT() {
		return PRODUCTCOUNT;
	}
	/**
	 * @param pRODUCTCOUNT the pRODUCTCOUNT to set
	 */
	public void setPRODUCTCOUNT(String PRODUCTCOUNT) {
		this.PRODUCTCOUNT = PRODUCTCOUNT;
	}
	/**
	 * @return the iD
	 */
	public String getID() {
		return ID;
	}
	/**
	 * @param iD the iD to set
	 */
	public void setID(String ID) {
		this.ID = ID;
	}
	/**
	 * @return the aMOUNT
	 */
	public String getAMOUNT() {
		return AMOUNT;
	}
	/**
	 * @param aMOUNT the aMOUNT to set
	 */
	public void setAMOUNT(String AMOUNT) {
		this.AMOUNT = AMOUNT;
	}
	/**
	 * @return the rEGIONNAME
	 */
	public String getREGIONNAME() {
		return REGIONNAME;
	}
	/**
	 * @param rEGIONNAME the rEGIONNAME to set
	 */
	public void setREGIONNAME(String REGIONNAME) {
		this.REGIONNAME = REGIONNAME;
	}
	/**
	 * @return the pAYMENT
	 */
	public String getPAYMENT() {
		return PAYMENT;
	}
	/**
	 * @param pAYMENT the pAYMENT to set
	 */
	public void setPAYMENT(String PAYMENT) {
		this.PAYMENT = PAYMENT;
	}
	/**
	 * @return the iMAGEURL
	 */
	public String getIMAGEURL() {
		return IMAGEURL;
	}
	/**
	 * @param iMAGEURL the iMAGEURL to set
	 */
	public void setIMAGEURL(String IMAGEURL) {
		this.IMAGEURL = IMAGEURL;
	}
	
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.JSON_STYLE);
	}
	
	
	

}
