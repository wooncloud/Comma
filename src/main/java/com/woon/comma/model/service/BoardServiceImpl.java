package com.woon.comma.model.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.woon.comma.model.dao.IBoardDao;
import com.woon.comma.vo.BoardVo;

@Service
public class BoardServiceImpl implements IBoardService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private IBoardDao dao;

	@Override
	public List<BoardVo> selectAllBoard() {
		logger.info("selectAllBoard");
		return dao.selectAllBoard();
	}

	@Override
	public List<BoardVo> selectPaging(Map<String, Object> map) {
		logger.info("selectPaging : {}", map);
		return dao.selectPaging(map);
	}

	@Override
	public int selectBoardCnt() {
		logger.info("selectBoardCnt");
		return dao.selectBoardCnt();
	}

	@Override
	public BoardVo detailBoard(int seq) {
		logger.info("detailBoard : {}", seq);
		return dao.detailBoard(seq);
	}

	@Override
	public boolean modifyBoard(Map<String, Object> map) {
		logger.info("modifyBoard : {}", map);
		return dao.modifyBoard(map) > 0 ? true : false;
	}

	@Override
	public boolean insertBoard(BoardVo vo) {
		logger.info("insertBoard : {}", vo);
		return dao.insertBoard(vo) > 0 ? true : false;
	}

	@Override
	public boolean deleteBoard(int seq) {
		logger.info("deleteBoard : {}", seq);
		return dao.deleteBoard(seq) > 0 ? true : false;
	}

	@Override
	public boolean incrementView(int seq) {
		logger.info("incrementView : {}", seq);
		return dao.incrementView(seq) > 0 ? true : false;
	}

}
