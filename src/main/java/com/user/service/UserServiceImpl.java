package com.user.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.AmountDAO;
import com.spring.dao.MemberDAO;
import com.spring.dto.MemberVO;
import com.spring.exception.AlreadyExistingEmailException;
import com.spring.exception.AlreadyExistingIdException;
import com.spring.util.RegisterRequest;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource(name = "userDAO")
	private MemberDAO userDAO;
	
	@Autowired
	private AmountDAO dao;

	@Override
	public void register(RegisterRequest regReq) throws Exception {
		MemberVO email = userDAO.selectByEmail(regReq.getEmail());
		if (email != null) {
			throw new AlreadyExistingEmailException(regReq.getEmail() + " is duplicate email.");
		}
		MemberVO id = userDAO.selectById(regReq.getId());
		if (id != null) {
			throw new AlreadyExistingIdException(regReq.getId() + " is duplicate id.");
		}
		userDAO.insertUser(regReq);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return userDAO.login(vo);
	}

}
