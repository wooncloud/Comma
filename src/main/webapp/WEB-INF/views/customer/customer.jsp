<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/customer.css" rel="stylesheet">

<div class="container qna-container">
	<div class="qna-header">
		<h1 class="fw-bold">Q &amp; A</h1>
		<h5>커피 콤마에 자주 질문하는 내용입니다.</h5>
	</div>
	<div class="qna-list">
		<div class="accordion" id="qnaAccordion">
			<div class="accordion-item">
				<h2 class="accordion-header" id="heading1">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapse1"
						aria-expanded="false" aria-controls="collapse1">홈페이지에 메뉴
						언제 올릴껀가요?</button>
				</h2>
				<div id="collapse1" class="accordion-collapse collapse"
					aria-labelledby="heading1" data-bs-parent="#qnaAccordion">
					<div class="accordion-body">나중에 할 생각입니다. 귀찮고 일단 시간 없으니 나중에
						할래요 ㅎ</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="heading2">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapse2"
						aria-expanded="false" aria-controls="collapse2">회원가입 약관 맨
						밑에 모든 약관 동의 체크해도 왜 작동이 안되죠?</button>
				</h2>
				<div id="collapse2" class="accordion-collapse collapse"
					aria-labelledby="heading2" data-bs-parent="#qnaAccordion">
					<div class="accordion-body">정처기 해야해서 그거 만들 시간 없습니다.</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="heading3">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapse3"
						aria-expanded="false" aria-controls="collapse3">이 홈페이지
						사장님한테 파실껀가여?</button>
				</h2>
				<div id="collapse3" class="accordion-collapse collapse"
					aria-labelledby="heading3" data-bs-parent="#qnaAccordion">
					<div class="accordion-body">팔고 싶습니다 ㅎㅎ</div>
				</div>
			</div>
			<div class="accordion-item">
				<h2 class="accordion-header" id="heading4">
					<button class="accordion-button collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#collapse4"
						aria-expanded="false" aria-controls="collapse4">그렇게 해서
						정처기 실기 합격할 수 있다고 생각하세요?</button>
				</h2>
				<div id="collapse4" class="accordion-collapse collapse"
					aria-labelledby="heading4" data-bs-parent="#qnaAccordion">
					<div class="accordion-body">이거 왜 눌러보는건데? 자신있어?! 자신있냐고!!! ㅠㅠㅠㅠ
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>