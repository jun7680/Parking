package com.spring.dao;

import java.util.List;

import com.spring.dto.AmountVO;
import com.spring.dto.CartVO;

public interface AmountDAO {
	
	public List<AmountVO> selectAmount() throws Exception;
	
	public void updateCar1(AmountVO vo) throws Exception;
	
	public void updateCar2(AmountVO vo) throws Exception;
	
	public void updateEndTime1(AmountVO vo) throws Exception;
	public void updateEndTime2(AmountVO vo) throws Exception;
	
	public List<AmountVO> selectPayment() throws Exception;
	
	public AmountVO myPayment(AmountVO vo) throws Exception;
	
	public CartVO myCart(CartVO vo) throws Exception;
	
	public void updateAddCart(CartVO vo) throws Exception;
	
	public void insertAddCart(CartVO vo) throws Exception;
	
	public AmountVO lookupPayment(AmountVO vo) throws Exception;
	
	public void insertTime1(AmountVO vo) throws Exception;
	
	public void NoMemberinsertTime1(AmountVO vo) throws Exception;
	
	public void NoMemberupdateCar1(AmountVO vo) throws Exception;
	
	public AmountVO areaCheck(AmountVO vo) throws Exception;

}
