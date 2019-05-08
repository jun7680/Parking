package com.amount.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.dao.AmountDAO;
import com.spring.dto.AmountVO;
import com.spring.dto.CartVO;

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
	
	@Override
	public AmountVO myPayment(AmountVO vo) throws Exception {
		return dao.myPayment(vo);
	}
	
	@Override
	public CartVO myCart(CartVO vo) throws Exception{
		return dao.myCart(vo);
	}
	
	@Override
	public void updateAddCart(CartVO vo) throws Exception{
		dao.updateAddCart(vo);
	}
	
	@Override
	public void insertAddCart(CartVO vo) throws Exception{
		dao.insertAddCart(vo);
	}
	
	
	@Override
	public AmountVO lookupPayment(AmountVO vo) throws Exception{
		return dao.lookupPayment(vo);
	}
	
	@Override
	public void insertTime1(AmountVO vo) throws Exception{
		dao.insertTime1(vo);
	}
	
	
	
	@Override
	public void NoMemberupdateCar1(AmountVO vo) throws Exception{
		dao.NoMemberupdateCar1(vo);
	}
	
	
	@Override
	public void NoMemberinsertTime1(AmountVO vo) throws Exception{
		dao.NoMemberinsertTime1(vo);
	}
	
	@Override
	public AmountVO areaCheck(AmountVO vo) throws Exception{
		return dao.areaCheck(vo);
	}
	
	
	

}
