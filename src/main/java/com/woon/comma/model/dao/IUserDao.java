package com.woon.comma.model.dao;

import java.util.Map;

import com.woon.comma.vo.UserVo;

public interface IUserDao {

	/**
	 * 로그인
	 */
	public UserVo loginUser(Map<String, Object> map);

	/**
	 * 회원가입
	 */
	public int signupUser(UserVo vo);

	/**
	 * 회원 탈퇴
	 */
	public int deleteUser(String id);

	/**
	 * 내 정보 조회
	 */
	public UserVo selectUser(String id);

	/**
	 * 내 정보 수정
	 */
	public int modifyUser(Map<String, Object> map);

	/**
	 * 아이디 중복검사
	 */
	public boolean idDuplCheck(String id);

}
