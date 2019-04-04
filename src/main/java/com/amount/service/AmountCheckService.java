package com.amount.service;

import java.util.List;

import com.spring.dto.AmountVO;

public interface AmountCheckService {
	
	public List<AmountVO> selectAmount() throws Exception;
	public void updateCar(AmountVO vo) throws Exception;

}
