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
	public void updateCar1(AmountVO vo) throws Exception{
		dao.updateCar1(vo);
	}
	
	@Override
	public void updateCar2(AmountVO vo) throws Exception{
		dao.updateCar2(vo);
	}
	
	@Override
	public void updateEndTime1(AmountVO vo) throws Exception{
		dao.updateEndTime1(vo);
	}
	
	@Override
	public void updateEndTime2(AmountVO vo) throws Exception{
		dao.updateEndTime2(vo);
	}
	
	@Override
	public List<AmountVO> selectPayment() throws Exception{
		return dao.selectPayment();
	}

}
