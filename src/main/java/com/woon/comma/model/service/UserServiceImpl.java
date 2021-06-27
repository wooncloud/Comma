package com.woon.comma.model.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woon.comma.model.dao.IUserDao;
import com.woon.comma.vo.UserVo;

@Service
public class UserServiceImpl implements IUserService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private IUserDao dao;

	@Override
	public UserVo loginUser(Map<String, Object> map) {
		logger.info("loginUser : {}", map);
		return dao.loginUser(map);
	}

	@Override
	public boolean signupUser(UserVo vo) {
		logger.info("signupUser : {}", vo);
		return dao.signupUser(vo) > 0 ? true : false;
	}

	@Override
	public boolean deleteUser(String id) {
		logger.info("deleteUser : {}", id);
		return dao.deleteUser(id) > 0 ? true : false;
	}

	@Override
	public UserVo selectUser(String id) {
		logger.info("selectUser : {}", id);
		return dao.selectUser(id);
	}

	@Override
	public boolean modifyUser(Map<String, Object> map) {
		logger.info("modifyUser : {}", map);
		return dao.modifyUser(map) > 0 ? true : false;
	}

	@Override
	public boolean idDuplCheck(String id) {
		logger.info("idDuplCheck : {}", id);
		return dao.idDuplCheck(id);
	}

}
