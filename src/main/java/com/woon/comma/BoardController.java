package com.woon.comma;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.woon.comma.model.service.IBoardService;

@Controller
public class BoardController {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private IBoardService boardService;
	
	@RequestMapping(value = "/boardList.do", method = RequestMethod.GET)
	public String boardList() {
		logger.info("boardList");
		
		return "board/boardList";
	}
}
