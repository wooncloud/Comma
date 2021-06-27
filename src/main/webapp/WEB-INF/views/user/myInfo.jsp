<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/common_page.css" rel="stylesheet">
<style type="text/css">
.form-div{
    padding: 20px;
    border: 1px solid lightgray;
    border-radius: 4px;
}
.form-div > div.p-2{
	border-bottom: 1px solid lightgray;
}

.form-div .form-label{
	color: dimgray;
	font-size: small;
}

.form-div .form-label.head-label{
    font-size: medium;
	font-weight: bold;
	text-align: left;
	width: 100%;
}
</style>
<div class="container section-container">
	<div class="container-header">
		<h1 class="fw-bold">내 정보 관리</h1>
		<h4>내 정보를 관리할 수 있습니다.</h4>
	</div>
	<div class="form-div small-container">
		<div class="p-2">
			<label class="form-label head-label">아이디</label>
			${vo.id}
		</div>
		<div class="p-2">
			<label class="form-label head-label">이름</label>
			${vo.name}
		</div>
		<div class="p-2">
			<label class="form-label head-label">비밀번호</label>
			<input type="button" value="비밀번호 변경하기" class="btn btn-secondary">
		</div>
		<div class="p-2">
			<label class="form-label head-label">휴대폰 번호</label>
			<div class="d-flex justify-content-between align-items-center">
				<div>${vo.phone}</div>
				<input type="button" value="변경" class="btn btn-secondary">
			</div>
		</div>
		<div class="p-2">
			<label class="form-label head-label">이메일</label>
			<div class="d-flex justify-content-between align-items-center">
				<div>${vo.email}</div>
				<input type="button" value="변경" class="btn btn-secondary">
			</div>
		</div>
		<div class="p-2">
			<label class="form-label head-label">주소</label>
			<div class="d-flex justify-content-between align-items-center">
				<div>${vo.address}</div>
				<input type="button" value="변경" class="btn btn-secondary">
			</div>
		</div>
		<div class="p-2">
			<label class="form-label head-label">수신설정</label>				
			<div class="d-flex justify-content-between align-items-center">
				<div class="d-flex">
					<div>이메일 : </div>
					<c:choose>
						<c:when test="${vo.recv_email == 'Y'}">
							<div class="badge bg-info text-dark ms-1">수신함</div>
						</c:when>
						<c:otherwise>
							<div class="badge bg-light text-dark ms-1">수신안함</div>
						</c:otherwise>
					</c:choose>
					<div class="ms-3">SMS : </div>
					<c:choose>
						<c:when test="${vo.recv_phone == 'Y'}">
							<div class="badge bg-info text-dark ms-1">수신함</div>
						</c:when>
						<c:otherwise>
							<div class="badge bg-light text-dark ms-1">수신안함</div>
						</c:otherwise>
					</c:choose>
				</div>
				<input type="button" value="변경" class="btn btn-secondary">
			</div>
		</div>
		<div class="text-end pt-4">
			<a href="./leave.do" class="btn btn-outline-light btn-sm" style="color:var(--bs-gray)">회원탈퇴</a>
		</div>
	</div>
	<div class="modal" tabindex="-1" id="pwModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">비밀번호 변경</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<label class="form-label head-label">현재 비밀번호</label>
					<input type="password" class="form-control" value="변경 가능">
					<label class="form-label head-label">비밀번호</label>
					<input type="password" class="form-control" value="변경 가능">
					<label class="form-label head-label">비밀번호 확인</label>
					<input type="password" class="form-control" value="변경 가능">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" tabindex="-1" id="phoneModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">휴대폰번호 변경</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" value="변경 가능">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" tabindex="-1" id="emailModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">이메일 변경</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" value="변경 가능">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" tabindex="-1" id="addrModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">주소 변경</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" value="변경 가능">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">변경하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" tabindex="-1" id="newsModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">이메일 / SMS 뉴스레터 수신설정</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="text-start">
						<input type="checkbox" name="newsEmail" id="chkNewsEmail">
						<label for="chkNewsEmail" class="form-label">이메일</label>
						<input type="checkbox" name="newsPhone" id="chkNewsPhone">
						<label for="chkNewsPhone" class="form-label">SMS</label>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-success">변경하기</button>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>