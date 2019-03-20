package com.amount.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.dao.AmountDAO;
import com.spring.dto.AmountVO;

@Service
public class AmountCheckServiceImpl implements AmountCheckService{
	
	@Inject
	private AmountDAO dao;
	
	@Override
	public List<AmountVO> selectAmount() throws Exception{
		return dao.selectAmount();
	}

}
