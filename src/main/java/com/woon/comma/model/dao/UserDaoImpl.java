package com.woon.comma.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.woon.comma.vo.UserVo;

@Repository
public class UserDaoImpl implements IUserDao {

	private final String NS = "com.woon.comma.model.UserDaoImpl.";
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public UserVo loginUser(Map<String, Object> map) {
		return sqlSession.selectOne(NS + "loginUser", map);
	}

	@Override
	public int signupUser(UserVo vo) {
		return sqlSession.insert(NS + "signupUser", vo);
	}

	@Override
	public int deleteUser(String id) {
		return sqlSession.update(NS + "deleteUser", id);
	}

	@Override
	public UserVo selectUser(String id) {
		return sqlSession.selectOne(NS + "selectUser", id);
	}

	@Override
	public int modifyUser(Map<String, Object> map) {
		return sqlSession.update(NS + "modifyUser", map);
	}

	@Override
	public boolean idDuplCheck(String id) {
		return ((int)sqlSession.selectOne(NS + "idDuplCheck", id) > 0) ? true : false;
	}

}
