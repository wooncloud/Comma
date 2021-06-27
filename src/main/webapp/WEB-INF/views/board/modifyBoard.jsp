<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/common_page.css" rel="stylesheet">

<div class="container section-container large-container">
	<form action="./CustomerBoard.do" method="post">
		<input type="hidden" name="command" value="modifyForm">
		<input type="hidden" name="seq" value="${dto.seq}">
		<div class="mb-3 d-flex justify-content-end">
			<input type="submit" value="수정하기" class="btn btn-success mx-1">
			<input type="reset" value="초기화" class="btn btn-light mx-1">
			<a href="./CustomerBoard.do?command=customerBoard" class="btn btn-outline-secondary mx-1">취소</a>
		</div>
		<div class="mb-3">
			<label class="form-label head-label">제목</label>
			<input type="text" id="title" class="form-control" value="${dto.title}" disabled>
		</div>
		<div class="mb-3">
			<label class="form-label head-label">내용</label>
			<textarea name="content" cols="30" rows="10" class="form-control">${dto.content }</textarea>
		</div>
		<div class="mb-3">
			<label class="form-label head-label">첨부파일</label>
			<input type="file" name="files" class="form-control">
		</div>
	</form>
</div>

<%@include file="/footer.jsp"%>