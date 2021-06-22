package com.woon.comma.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.woon.comma.vo.BoardVo;

@Repository
public class BoardDaoImpl implements IBoardDao {

	private final String NS = "com.woon.comma.model.BoardDaoImpl.";
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<BoardVo> selectAllBoard() {
		return sqlSession.selectList(NS + "selectAllBoard");
	}

	@Override
	public List<BoardVo> selectPaging(Map<String, Object> map) {
		return sqlSession.selectList(NS + "selectPaging", map);
	}

	@Override
	public int selectBoardCnt() {
		return sqlSession.selectOne(NS + "selectBoardCnt");
	}

	@Override
	public BoardVo detailBoard(int seq) {
		return sqlSession.selectOne(NS + "detailBoard", seq);
	}

	@Override
	public int modifyBoard(Map<String, Object> map) {
		return sqlSession.update(NS + "modifyBoard", map);
	}

	@Override
	public int insertBoard(BoardVo vo) {
		return sqlSession.insert(NS + "insertBoard", vo);
	}

	@Override
	public int deleteBoard(int seq) {
		return sqlSession.update(NS + "deleteBoard", seq);
	}

	@Override
	public int incrementView(int seq) {
		return sqlSession.update(NS + "incrementView", seq);
	}

}
