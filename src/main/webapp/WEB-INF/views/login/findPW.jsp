<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/common_page.css" rel="stylesheet">
<style type="text/css">
	#findForm, #findResult{
		border: 1px solid lightgray;
	    padding: 20px;
	    border-radius: 10px;
    }
    
    #findForm > div{
	    padding: 10px 0;
    }
    #findResult > div{
	    padding: 20px 0;
    }
</style>

<div class="container section-container">
	<div class="container-header">
		<h1 class="fw-bold">비밀번호 찾기</h1>
	</div>
	<div class="small-container">
		<div id="findForm">
			<div>
				<label class="form-label head-label">이름</label>
				<input type="text" class="form-control" value="" placeholder="이름을 입력하세요.">
			</div>
			<div>
				<label class="form-label head-label">아이디</label>
				<input type="text" class="form-control" value="" placeholder="아이디를 입력하세요.">
			</div>
			<div>
				<label class="form-label head-label">휴대폰 번호</label>
				<input type="tel" class="form-control" value="" placeholder="휴대폰 번호를 입력하세요.">
			</div>
			<div class="text-center">
				<input type="button" class="btn btn-success btn-lg" value="비밀번호 찾기">
			</div>
		</div>
		<div id="findResult" style="display: none">
			<div class="text-center">
				<h5>회원님의 이메일 ********@******.com 로 임시비밀번호가 발송 되었습니다.</h5>
			</div>
			<div class="text-center">
				<a href="./CommaCtrl.do?command=login" class="btn btn-primary btn-lg">로그인 하기</a>
			</div>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>