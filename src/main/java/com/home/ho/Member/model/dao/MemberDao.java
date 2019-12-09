package com.home.ho.Member.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.home.ho.Member.model.vo.Member;

@Repository("meDAO")
public class MemberDao {

	public int join(SqlSessionTemplate sqlSession, Map<String, Object> join) {
		return sqlSession.insert("mapper.joinMember", join);
	}

}
