package com.home.ho.Member.model.service;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.home.ho.Member.model.dao.MemberDao;
import com.home.ho.Member.model.vo.Member;

@Service("meService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao meDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int join(Map<String, Object> join) {
		return meDAO.join(sqlSession, join);
	}

}
