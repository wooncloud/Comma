<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./css/error.css" rel="stylesheet">
<title>:: [Coffee Comma] 커피 콤마 ::</title>
</head>

<body>
	<div class="container">
		<div class="message">
			<h1>ERROR</h1>
			<h3>잘못된 접근입니다.</h3>
			<h4>
				<a href="./">메인으로 돌아가기</a>
			</h4>
		</div>
		<div class="coffee-machine">
			<div class="coffee-header">
				<div class="coffee-header__buttons coffee-header__button-one"></div>
				<div class="coffee-header__buttons coffee-header__button-two"></div>
				<div class="coffee-header__display"></div>
				<div class="coffee-header__details"></div>
			</div>
			<div class="coffee-medium">
				<div class="coffe-medium__exit"></div>
				<div class="coffee-medium__arm"></div>
				<div class="coffee-medium__liquid"></div>
				<div class="coffee-medium__smoke coffee-medium__smoke-one"></div>
				<div class="coffee-medium__smoke coffee-medium__smoke-two"></div>
				<div class="coffee-medium__smoke coffee-medium__smoke-three"></div>
				<div class="coffee-medium__smoke coffee-medium__smoke-for"></div>
				<div class="coffee-medium__cup"></div>
			</div>
			<div class="coffee-footer"></div>
		</div>
	</div>
</body>

</html>
<!-- Coffee Machine Pure CSS Animation -->
<!-- Copyright (c) 2021 by Henrique Rodrigues (https://codepen.io/hjdesigner/pen/jvyJdX) -->