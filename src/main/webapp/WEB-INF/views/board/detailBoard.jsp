<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/common_page.css" rel="stylesheet">
<div class="container section-container middle-container">
	<div class="card">
		<div class="card-header">
			<h4>${dto.title}</h4>
			<div class="d-flex justify-content-between">
				<div>작성자 : ${dto.id }</div>
				<div>
					<fmt:formatDate var="regdateFmt" value="${dto.regdate}" pattern="yyyy-MM-dd" />
					작성일 : ${regdateFmt}
				</div>
			</div>
		</div>
		<div class="card-body">
			${dto.content }
		</div>
		<div class="card-footer">
			<div class="d-flex justify-content-between">
				<div>
					<c:if test="${User != null}">
						<a href="./CustomerBoard.do?command=replyBoard&seq=${dto.seq}" class="btn btn-primary">답글</a>
					</c:if>
					<a href="./CustomerBoard.do?command=customerBoard" class="btn btn-secondary">돌아가기</a>
				</div>
				<c:if test="${User != null && User.id eq dto.id }">				
					<div class="d-flex">
						<a href="./CustomerBoard.do?command=modifyBoard&seq=${dto.seq}" class="btn btn-success mx-1">수정</a>
						<a href="./CustomerBoard.do?command=deleteBoard&seq=${dto.seq}" class="btn btn-danger mx-1" onclick="return customerBoard.delete()">삭제</a>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>