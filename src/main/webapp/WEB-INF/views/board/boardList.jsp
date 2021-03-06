<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/common_page.css" rel="stylesheet">
<style type="text/css">
	#boardList > thead > tr > th{
		border-bottom: 1px solid lightgray;
		text-align: center;
	}
</style>
<div class="container section-container large-container">
	<div class="container-header">
		<h1 class="fw-bold">π κ³ κ° κ²μν</h1>
	</div>
	<div>
		<c:if test="${User != null}">
			<div class="mb-2 d-flex justify-content-end">
				<a href="./CustomerBoard.do?command=insertBoard" class="btn btn-sm btn-outline-primary">β κΈμ°κΈ°</a>
			</div>
		</c:if>
		<div class="mb-2">
			<table class="table table-striped table-bordered" id="boardList">
				<thead class="table-primary">
					<tr>
						<th style="width: 15%">μμ±μ</th>
						<th style="width: 60%">μ λͺ©</th>
						<th style="width: 15%">μμ±μΌ</th>
						<th style="width: 10%">μ‘°νμ</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${lists}" varStatus="vs">
						<tr>
							<td>${item.id}</td>
							<td>
								<c:choose>
									<c:when test="${item.delflag eq 'Y'}">
										<div class="badge bg-secondary">- β μ­μ λ κ²μλ¬Ό μλλ€. -</div>
									</c:when>
									<c:otherwise>
										<c:forEach begin="1" end="${item.depth}">β</c:forEach>
										<a href="./CustomerBoard.do?command=detailBoard&seq=${item.seq}">${item.title}</a>
										<!-- λ μ§ κ³μ° ν κΈ°κ°μ λ°λΌ newλ₯Ό λΆμΌ μ μκ³  μ λΆμΌ μ μλ€. -->
										<!-- <span class="badge text-warning">new</span> -->
									</c:otherwise>
								</c:choose>
							</td>
							<fmt:formatDate var="regdateFmt" value="${item.regdate}" pattern="yyyy-MM-dd" />
							<td class="text-center">${regdateFmt}</td>
							<td class="text-center">${item.viewcount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="mb-2 d-flex justify-content-between">
				<div class="d-flex">
					<select class="form-select form-select-sm" name="searchType" style="width: 125px;">
						<option value="t">μ λͺ©</option>
						<option value="c">λ΄μ©</option>
						<option value="tc">μ λͺ© + λ΄μ©</option>
					</select>
					<div class="input-group ms-2">
						<input type="text" class="form-control form-control-sm" name="searchKeyword" placeholder="κ²μ..." aria-describedby="btnSearch">
						<button class="btn btn-outline-secondary btn-sm" type="button" id="btnSearch">κ²μ</button>
					</div>
				</div>
				<c:choose>
					<c:when test="${User != null}">
						<a href="./CustomerBoard.do?command=insertBoard" class="btn btn-sm btn-outline-primary">β κΈμ°κΈ°</a>
					</c:when>
					<c:otherwise>
						<div class="text-danger d-flex align-items-center">β κΈμ°κΈ°λ λ‘κ·ΈμΈμ ν΄μΌ μμ±ν  μ μμ΅λλ€.</div>
					</c:otherwise>
				</c:choose>
			</div>
			<ul class="pagination pagination-sm justify-content-center">
				<c:if test="${page.startPage > page.countPage}">
					<li class="page-item">
						<a class="page-link" href="./CustomerBoard.do?command=customerBoard&page=${page.startPage - 1}">&laquo;</a>
					</li>
				</c:if>
				<c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
					<li class="page-item ${num eq page.page ? 'active' : ''}">
						<a class="page-link" href="./CustomerBoard.do?command=customerBoard&page=${num}">${num}</a>
					</li>
				</c:forEach>
				<!-- TODO : μ΄λΆλΆ μ’ μ΄μν¨ -->
				<c:if test="${page.endPage < page.totalPage}">
					<li class="page-item">
						<a class="page-link" href="./CustomerBoard.do?command=customerBoard&page=${page.endPage + 1}">&raquo;</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>