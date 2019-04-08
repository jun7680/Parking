package com.spring.dao;

import java.util.List;

import com.spring.dto.AmountVO;

public interface AmountDAO {
	
	public List<AmountVO> selectAmount() throws Exception;
	
	public void updateCar1(AmountVO vo) throws Exception;
	
	public void updateCar2(AmountVO vo) throws Exception;
	
	public void updateEndTime1(AmountVO vo) throws Exception;
	public void updateEndTime2(AmountVO vo) throws Exception;
	
	public List<AmountVO> selectPayment() throws Exception;

}
