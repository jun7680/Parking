package com.spring.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.dto.AmountVO;

@Repository
public class AmountDAOImpl implements AmountDAO {

	@Inject
	private SqlSession sqlSession;
		
	@Override
	public List<AmountVO> selectAmount() throws Exception{
		return sqlSession.selectList("user.amountCheck");
	}
	
	@Override
	public void updateCar(AmountVO vo)throws Exception{
		sqlSession.update("user.inputCarnumber",vo);
	}
	@Override
	public void updateEndTime(AmountVO vo) throws Exception{
		sqlSession.update("user.endtimeInput",vo);
	}
	

}
