<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>
<link href="./css/map.css" rel="stylesheet">

<div class="container map-container">
	<div class="map-header">
		<h1 class="fw-bold">매장 위치</h1>
	</div>
	<div class="map-content">
		<div>
			<div class="content-addr">
				<h4>☕ 서울 가산동</h4>
				<p>
					주소 : 서울 금천구 가산디지털2로 115 112호 (가산디지털단지역 5번 출구에서 444m)<br> TEL :
					02-2107-7979
				</p>
			</div>
			<div id="map2" class="map-div" style="width: 100%; height: 400px;"></div>
		</div>
		<div>
			<div class="content-addr">
				<h4>☕ 수원 인계동</h4>
				<p>
					주소 : 경기 수원시 팔달구 효원로307번길 97 101동 103호 카페 콤마 (수원시청역 9번 출구에서 729m)<br>
					TEL : 010-4823-8705
				</p>
			</div>
			<div id="map1" class="map-div" style="width: 100%; height: 400px;"></div>
		</div>
	</div>
</div>

<%@include file="/footer.jsp"%>