package com.woon.comma.aop;

import org.aspectj.lang.JoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LoggerDaoAop {

	public void before(JoinPoint j) {
		Logger logger = LoggerFactory.getLogger(j.getTarget().toString());

		Object[] args = j.getArgs();
		if (args != null) {
			logger.info("[ DAO LOG ] - 실행되는 메서드명 : {}", j.getSignature().getName());

			int cnt = 0;
			for (Object o : args) {
				logger.info("[ DAO LOG ] -- " + cnt + "번째 argument : " + String.valueOf(o));
			}
		}
	}

	public void afterReturning(JoinPoint j) {
		Logger logger = LoggerFactory.getLogger(j.getTarget().toString());
		logger.info("[ DAO LOG ] - 종료되는 메서드명 : {}", j.getSignature().getName());
	}

	public void error(JoinPoint j) {
		Logger logger = LoggerFactory.getLogger(j.getTarget().toString());
		logger.info("[ DAO LOG ] - [에러발생] 메서드명 : {}", j.getSignature().getName());
		logger.info("[ DAO LOG ] -- [에러 발생 경로] : {}", j.toLongString());
	}
}
