package com.woon.comma;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.woon.comma.Util.Util;
import com.woon.comma.model.service.IUserService;
import com.woon.comma.vo.UserVo;

@Controller
public class UserController {

	Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private IUserService userService;

	/**
	 * 로그인 폼으로 이동
	 * 
	 * @return
	 */
	@RequestMapping(value = "/loginForm.do", method = RequestMethod.GET)
	public String loginForm() {
		logger.info("loginForm");

		return "login/login";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, Object> param, HttpSession session, HttpServletResponse resp) {
		logger.info("login : {}", param);
		UserVo vo = userService.loginUser(param);
		System.out.println(vo);

		if (vo != null) {
			session.setAttribute("User", vo);

			return "redirect:/index.jsp";
		} else {
			String msg = "로그인에 실패 하였습니다.\\n아이디 또는 비밀번호를 다시 확인하세요.";
			String redirect = "./loginForm.do";
			// 아이디나 비밀번호가 잘못 됨

			try {
				Util.PrintWriterMsg(resp, msg, redirect);
			} catch (IOException e) {
				e.printStackTrace();
			}

			return null;
		}
	}

	/**
	 * 회원가입 동의화면 이동
	 * 
	 * @return
	 */
	@RequestMapping(value = "/registRead.do", method = RequestMethod.GET)
	public String registRead() {
		logger.info("registRead");

		return "regist/registRead";
	}

	/**
	 * 회원가입 폼으로 이동
	 * 
	 * @return
	 */
	@RequestMapping(value = "/registForm.do", method = RequestMethod.GET)
	public String registForm() {
		logger.info("registForm");

		return "regist/regist";
	}

	@RequestMapping(value = "/regist.do", method = RequestMethod.POST)
	public void regist(UserVo param, HttpServletResponse resp) {
		logger.info("regist : {}", param);

		boolean isc = userService.signupUser(param);

		String msg = null;
		String url = null;
		if (isc) {
			// 회원가입 완료
			msg = "회원가입이 완료되었습니다.\\n로그인 페이지로 이동힙니다.";
			url = "./loginForm.do";
		} else {
			// 회원가입 실패
			msg = "회원가입에 실패했습니다.\\n다시 시도해주세요.";
			url = "./registForm.do";
		}

		try {
			Util.PrintWriterMsg(resp, msg, url);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 로그아웃
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	private String logout(HttpSession session) {
		logger.info("logout");

		if (session != null) {
			session.invalidate();
		}

		return "redirect:/index.jsp";
	}

	/**
	 * 회원정보 화면으로 이동
	 * 
	 * @return
	 */
	@RequestMapping(value = "/userInfo.do", method = RequestMethod.GET)
	public String userInfo(Model model, HttpSession session) {
		logger.info("userInfo");

		UserVo sessionVo = (UserVo) session.getAttribute("User");
		UserVo userVo = userService.selectUser(sessionVo.getId());

		model.addAttribute("vo", userVo);

		return "user/myInfo";
	}

	/**
	 * 회원탈퇴 화면으로 이동
	 * 
	 * @return
	 */
	@RequestMapping(value = "/leave.do", method = RequestMethod.GET)
	public String leave(Model model, HttpSession session) {
		logger.info("leave");

		UserVo sessionUser = (UserVo) session.getAttribute("User");
		UserVo userVo = userService.selectUser(sessionUser.getId());

		model.addAttribute("vo", userVo);

		return "user/leave";
	}

	@RequestMapping(value = "/doLeave.do", method = RequestMethod.POST)
	public void doLeave(@RequestParam Map<String, Object> param, HttpServletResponse resp) {
		logger.info("do leave");

		// 입력한 정보 확인
		UserVo uVo = userService.loginUser(param);

		if (uVo != null) {
			boolean isc = userService.deleteUser(uVo.getId());

			String msg = null;
			String url = null;
			if (isc) {
				// 탈퇴 성공
				msg = "탈퇴가 완료 되었습니다.\\n이용해 주셔서 감사합니다.";
				url = "./";
			} else {
				// 탈퇴 실패
				msg = "탈퇴에 실패 했습니다.\\n관리자에게 문의하세요.";
				url = "./error500.do";
			}
			
			try {
				Util.PrintWriterMsg(resp, msg, url);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
