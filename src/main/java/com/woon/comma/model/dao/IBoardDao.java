package com.woon.comma.model.dao;

import java.util.List;
import java.util.Map;

import com.woon.comma.vo.BoardVo;

public interface IBoardDao {
	public List<BoardVo> selectAllBoard();

	public List<BoardVo> selectPaging(Map<String, Object> map);

	public int selectBoardCnt();
	
	public BoardVo detailBoard(int seq);

	public int modifyBoard(Map<String, Object> map);

	public int insertBoard(BoardVo vo);

	public int deleteBoard(int seq);

	public int incrementView(int seq);
}
