package com.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.dto.AmountVO;
import com.spring.dto.CartVO;

@Repository
public class AmountDAOImpl extends AbstractDAO implements AmountDAO   {

	@Inject
	private SqlSession sqlSession;
		
	@Override
	public List<AmountVO> selectAmount() throws Exception{
		return sqlSession.selectList("amount.amountCheck");
	}
	
	@Override
	public void updateCar1(AmountVO vo)throws Exception{
		sqlSession.update("amount.inputCarnumber1",vo);
	}
	
	@Override
	public void updateCar2(AmountVO vo)throws Exception{
		sqlSession.update("amount.inputCarnumber2",vo);
	}
	@Override
	public void updateEndTime1(AmountVO vo) throws Exception{
		sqlSession.update("amount.endtimeInput1",vo);
	}
	
	@Override
	public void updateEndTime2(AmountVO vo) throws Exception{
		sqlSession.update("amount.endtimeInput2",vo);
	}
	
	@Override
	public List<AmountVO> selectPayment() throws Exception{
		return sqlSession.selectList("amount.payMent");
	}
	
	
	public AmountVO myPayment(AmountVO vo) throws Exception{
		return (AmountVO) selectOne("amount.mypayment", vo);
	}
	
	public CartVO myCart(CartVO vo) throws Exception{
		return (CartVO) selectOne("amount.myCart",vo);
	}
	
	@Override
	public void updateAddCart(CartVO vo) throws Exception{
		sqlSession.update("cart.updateCart",vo);
	}
	
	@Override
	public void insertAddCart(CartVO vo) throws Exception{
		sqlSession.insert("cart.addCart",vo);
	}

}
