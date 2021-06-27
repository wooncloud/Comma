<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/login.css" rel="stylesheet">

<div class="container login-container">
	<div class="login-header">
		<h1 class="fw-bold">로그인</h1>
		<h5>Welcome to Coffee Comma!</h5>
		<h4>커피콤마에 오신것을 환영합니다.</h4>
	</div>
	<div class="login-form">
		<!-- TODO: 서버가 만들어지면 POST로 로그인 정보 전송 -->
		<!-- 아이디, 비밀번호 체크, 아이디저장 내용은 쿠키저장 -->
		<form action="./login.do" method="post">
			<div>
				<input type="text" name="id" class="form-control form-control-lg" placeholder="아이디를 입력하세요." required>
			</div>
			<div>
				<input type="password" name="pw" class="form-control form-control-lg" placeholder="비밀번호를 입력하세요." name="pw" id="pw" required>
			</div>
			<div style="text-align: left;">
				<input type="checkbox" name="saveID" id="saveID">
				<label for="saveID">아이디 저장</label>
			</div>
			<div>
				<input type="submit" class="btn btn-success btn-lg w-100" value="로그인">
			</div>
		</form>
		<div class="login-btn-group">
			<a href="./registRead.do" class="btn btn-outline-primary">회원가입</a>
			<a href="./findID.do" class="btn btn-outline-secondary">아이디 찾기</a>
			<a href="./findPW.do" class="btn btn-outline-secondary">비밀번호 찾기</a>
		</div>
	</div>
</div>


<%@include file="/footer.jsp"%>
