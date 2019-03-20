package com.spring.dao;

import java.util.List;

import com.spring.dto.AmountVO;

public interface AmountDAO {
	
	public List<AmountVO> selectAmount() throws Exception;

}
