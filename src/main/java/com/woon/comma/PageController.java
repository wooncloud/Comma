package com.woon.comma;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {

	Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping(value = "/intro.do", method = RequestMethod.GET)
	public String intro() {
		logger.info("intro");
		return "intro/intro";
	}

	@RequestMapping(value = "/menu.do", method = RequestMethod.GET)
	public String menu() {
		logger.info("menu");
		return "menu/menu";
	}

	@RequestMapping(value = "/news.do", method = RequestMethod.GET)
	public String news() {
		logger.info("news");
		return "news/news";
	}

	@RequestMapping(value = "/promotion.do", method = RequestMethod.GET)
	public String promotion() {
		logger.info("promotion");
		return "promotion/promotion";
	}

	@RequestMapping(value = "/board.do", method = RequestMethod.GET)
	public String board() {
		logger.info("board");
		return "board/board";
	}
	
	@RequestMapping(value = "/map.do", method = RequestMethod.GET)
	public String map() {
		logger.info("map");
		return "map/map";
	}
	
	@RequestMapping(value = "/help.do", method = RequestMethod.GET)
	public String help() {
		logger.info("help");
		return "customer/customer";
	}

}
