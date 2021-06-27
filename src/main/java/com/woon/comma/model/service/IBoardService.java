package com.woon.comma.model.service;

import java.util.List;
import java.util.Map;

import com.woon.comma.vo.BoardVo;

public interface IBoardService {
	public List<BoardVo> selectAllBoard();

	public List<BoardVo> selectPaging(Map<String, Object> map);

	public int selectBoardCnt();

	public BoardVo detailBoard(int seq);

	public boolean modifyBoard(Map<String, Object> map);

	public boolean insertBoard(BoardVo vo);

	public boolean deleteBoard(int seq);

	public boolean incrementView(int seq);
}
