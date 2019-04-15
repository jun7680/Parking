package com.amount.service;

import java.util.List;

import com.spring.dto.AmountVO;

public interface AmountCheckService {
	
	public List<AmountVO> selectAmount() throws Exception;
	public void updateCar1(AmountVO vo) throws Exception;
	public void updateCar2(AmountVO vo) throws Exception;
	public void updateEndTime1(AmountVO vo) throws Exception;

	public void updateEndTime2(AmountVO vo) throws Exception;
	public List<AmountVO> selectPayment() throws Exception;
	
	 public AmountVO myPayment(AmountVO vo) throws Exception;

}
