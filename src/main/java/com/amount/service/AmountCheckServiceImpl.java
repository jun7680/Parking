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
	
	@Override
	public void updateCar(AmountVO vo) throws Exception{
		dao.updateCar(vo);
	}
	
	@Override
	public void updateEndTime(AmountVO vo) throws Exception{
		dao.updateEndTime(vo);
	}
	
	@Override
	public List<AmountVO> selectPayment() throws Exception{
		return dao.selectPayment();
	}

}
