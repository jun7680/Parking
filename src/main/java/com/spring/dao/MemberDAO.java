package com.spring.dao;

import org.springframework.stereotype.Repository;

import com.spring.dto.MemberVO;
import com.spring.util.RegisterRequest;

@Repository("userDAO")
public class MemberDAO extends AbstractDAO{
	
	 public MemberVO selectByEmail(String email) {
	        return (MemberVO)selectOne("user.selectByEmail", email);
	    }
	 
	    public MemberVO selectById(String id) {
	        return (MemberVO)selectOne("user.selectById", id);
	    }
	 
	    public void insertUser(RegisterRequest regReq) {
	        insert("user.register", regReq);
	    }



}
