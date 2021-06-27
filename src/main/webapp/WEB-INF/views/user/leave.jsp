<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/common_page.css" rel="stylesheet">
<style type="text/css">
	.small-container>div {
		margin: 20px 0;
	}
</style>
<div class="container section-container">
	<div class="container-header">
		<h1 class="fw-bold">회원탈퇴</h1>
		<div>
			서비스를 이용하시는데 불편함이 있으셨나요?<br>
			이메일 수신거부는 '내정보 > 수신설정 > 수신거부' 를 통해서 가능합니다.<br>
			이용 불편 및 각종 문의사항은 '고객 게시판' 또는 '고객센터'를 이용해 주세요.
		</div>
	</div>
	<div class="small-container">
		<div class="card">
			<div class="card-body">
				<h6 class="card-title">회원탈퇴 전, 유의사항을 확인해 주시기 바랍니다.</h6>
				<ul class="card-text">
					<li>회원탈퇴 시 서비스 이용이 불가합니다.</li>
					<li>거래정보가 있는 경우, 소비자 보호에 관한 법률에 따라 계약 또는 청약철회에 관한 기록, 대금결제 및 재화 등의 공급에 관한 기록은 5년동안 보존됩니다.</li>
					<li>회원탈퇴 후 서비스에 입력하신 게시글, 답글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없어 편집 및 삭제처리가 원천적으로 불가능 합니다.</li>
					<li>게시글, 답글 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제하신 후 탈퇴를 신청하시기 바랍니다.</li>
				</ul>
			</div>
			<div class="card-footer">
				<div class="d-flex align-items-center">
					<input type="checkbox" name="leaveAgree" id="leaveAgree">
					<label class="light-label" for="leaveAgree">&nbsp;상기 카페콤마 회원탈퇴 시 처리사항 안내를 확인하였음에 동의합니다.</label>
				</div>
			</div>
		</div>
		<div class="card">
			<form action="./User.do" method="post">
				<div class="card-body">
					<h6 class="card-title">보안을 위해 회원님의 이름과 계정 이메일 및 비밀번호를 확인 합니다.</h6>
					<div class="card-text">
						<div class="mt-3">
							<label class="form-label">이름 : </label>
							<input type="text" name="name" class="form-control" value="${dto.name }" readonly>
						</div>
						<div class="mt-3">
							<label class="form-label">아이디 : </label>
							<input type="text" name="id" class="form-control" value="${dto.id }" readonly>
						</div>
						<div class="mt-3">
							<label class="form-label">이메일 : </label>
							<input type="text" name="email" class="form-control" value="${dto.email }" readonly>
						</div>
						<div class="mt-3">
							<label class="form-label">비밀번호 : </label>
							<input type="password" name="pw" class="form-control">
						</div>
						<div class="mt-3 d-flex justify-content-end">
							<input type="submit" class="btn btn-outline-secondary" value="탈퇴하기">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>