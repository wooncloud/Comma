package com.woon.comma.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class AccessLogFilter implements Filter{

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public AccessLogFilter() {
	}

	@Override
	public void destroy() {
		logger.info("[ Access Log ] : destroy");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest sReq = (HttpServletRequest)request;
		
		// 접속정보를 출력 (로그 처리)
		String remote = StringUtils.defaultString(sReq.getRemoteAddr(), "-");
		String uri = StringUtils.defaultString(sReq.getRequestURI(), "-");
		String queryString = StringUtils.defaultString(sReq.getQueryString(), "");
		
		// header 정보
		String referer = StringUtils.defaultString(sReq.getHeader("Referer"), "-");
		String agent = StringUtils.defaultString(sReq.getHeader("User-Agent"), "-");
		
		String log = String.format("[ Access Log ] : %s?%s : %s : %s : %s", uri, queryString, remote, referer, agent);
		logger.info(log);

		chain.doFilter(sReq, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		logger.info("[ Access Log ] : init");
	}
	
	
}
