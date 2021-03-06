package com.woon.comma.Util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Util {

	/**
	 * Controller에서 View로 Alert 메시지를 전달합니다.<br>
	 * 실행시 무조건 다른 페이지로 리다이렉트 됩니다.
	 * 
	 * @param resp        : HttpServletResponse 객체
	 * @param msg         : 전달할 메시지 명
	 * @param redirectUri : 리다이렉트 uri (null인 경우 index.jsp로 이동)
	 * 
	 * @author Woo seong ho
	 */
	public static void PrintWriterMsg(HttpServletResponse resp, String msg, String redirectUri) throws IOException {
		resp.setContentType("text/html; charset=UTF-8;");
		PrintWriter out = resp.getWriter();

		if (redirectUri == null) {
			out.print("<script>alert('" + msg + "'); location.href='/';</script>");
		} else {
			out.print("<script>alert('" + msg + "'); location.href='" + redirectUri + "';</script>");
		}

		out.flush();
		out.close();
	}
}
