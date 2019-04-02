package com.user.service;

import com.spring.dto.MemberVO;
import com.spring.util.RegisterRequest;

public interface UserService {

	  void register(RegisterRequest regReq) throws Exception;
	  
	  public MemberVO login(MemberVO vo) throws Exception;
	  

}
