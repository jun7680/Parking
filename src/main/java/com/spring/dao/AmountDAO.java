package com.spring.dao;

import java.util.List;

import com.spring.dto.AmountVO;

public interface AmountDAO {
	
	public List<AmountVO> selectAmount() throws Exception;
	
	public void updateCar(AmountVO vo) throws Exception;
	
	public void updateEndTime(AmountVO vo) throws Exception;

}
