<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- [CSS] -->
    <!-- bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- comma -->
	<link href="./css/comma.css" rel="stylesheet">

    <!-- [JS] -->
    <!-- bootstrap -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- swal -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
    <!-- comma -->
	<script type="text/javascript" src="./js/comma.js"></script>
	<title>:: [Coffee Comma] 커피 콤마 ::</title>
</head>
<body>
	<nav class="py-2" id="defaultNav">
        <div class="container d-flex flex-wrap">
            <ul class="nav me-auto"></ul>
            <ul class="nav">
            	<c:choose>
            		<c:when test="${User == null}">
	            		<li class="nav-item">
		                    <a href="Login.do?command=login" class="nav-link px-2">로그인</a>
						</li>
		                <li class="nav-item">
		                    <a href="Regist.do?command=regist" class="nav-link px-2">회원가입</a>
		                </li>
            		</c:when>
            		<c:otherwise>
            			<li class="nav-item">
		                    <a href="Login.do?command=logout" class="nav-link px-2">로그아웃</a>
		                </li>
		                <li class="nav-item">
		                    <a href="User.do?command=myInfo" class="nav-link px-2">내 정보</a>
		                </li>
            		</c:otherwise>
            	</c:choose>
                <li class="nav-item">
                    <a href="CommaCtrl.do?command=map" class="nav-link px-2">매장위치</a>
                </li>
                <li class="nav-item">
                    <a href="CommaCtrl.do?command=customer" class="nav-link px-2">고객센터</a>
                </li>
            </ul>
        </div>
    </nav>
    <header class="py-3" id="defaultHeader">
        <div class="container d-flex flex-wrap justify-content-center">
            <a href="./" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                <img src="images/logo/logo.png" alt="">
                <span class="fs-2 logo-text">COFFEE</span>
            </a>
            <div class="col-12 col-lg-8 mb-3 mb-lg-0 d-flex align-items-center">
                <ul class="d-flex align-items-center nav nav-justified w-100">
                    <li class="nav-item">
                        <a href="CommaCtrl.do?command=intro" class="nav-link">콤마 소개</a>
                    </li>
                    <li class="nav-item">
                        <a href="CommaCtrl.do?command=menu" class="nav-link">콤마 메뉴</a>
                    </li>
                    <li class="nav-item">
                        <a href="CommaCtrl.do?command=news" class="nav-link">콤마 뉴스</a>
                    </li>
                    <li class="nav-item">
                        <a href="CommaCtrl.do?command=promotion" class="nav-link">프로모션</a>
                    </li>
                    <li class="nav-item">
                        <a href="CustomerBoard.do?command=customerBoard" class="nav-link">고객 게시판</a>
                    </li>
                </ul>
            </div>
        </div>
    </header>
    <nav class="navbar" id="mobileNav">
        <div class="container-fluid">
            <a href="./" class="d-flex align-items-center text-decoration-none justify-content-center">
                <img src="images/logo/logo.png" alt="">
                <span class="fs-2 logo-text">COFFEE</span>
            </a>
            <button class="navbar-toggler" type="button" onclick="comma.header.mobileCollapse()">
                <i class="bi bi-list"></i>
            </button>
        </div>
    </nav>
    <div id="mobileSide">
        <a href="./" class="d-flex align-items-center text-decoration-none justify-content-center">
            <img src="images/logo/logo.png" alt="">
            <span class="fs-2 logo-text">COFFEE</span>
        </a>
        <hr>
        <ul class="nav nav-pills flex-column">
        	<!-- TODO : Session이 없으면 로그인, 회원가입을 표시 -->
            <li>
                <a href="Login.do?command=login" class="nav-link"> 로그인 </a>
            </li>
            <li>
                <a href="Regist.do?command=regist" class="nav-link"> 회원가입 </a>
            </li>
            <!-- TODO : Session이 있으면 로그아웃과 내정보를 표시 -->
            <li>
                <a href="Login.do?command=logout" class="nav-link"> 로그아웃 </a>
            </li>
            <li>
                <a href="User.do?command=myInfo" class="nav-link"> 내 정보 </a>
            </li>
            <li>
                <a href="CommaCtrl.do?command=map" class="nav-link"> 매장위치 </a>
            </li>
            <li>
                <a href="CommaCtrl.do?command=customer" class="nav-link"> 고객센터 </a>
            </li>
        </ul>
        <hr>
        <ul class="nav nav-pills flex-column">
            <li>
                <a href="CommaCtrl.do?command=intro" class="nav-link"> 소개 </a>
            </li>
            <li>
                <a href="CommaCtrl.do?command=menu" class="nav-link"> 메뉴 </a>
            </li>
            <li>
                <a href="CommaCtrl.do?command=news" class="nav-link"> 뉴스 </a>
            </li>
            <li>
                <a href="CommaCtrl.do?command=promotion" class="nav-link"> 프로모션 </a>
            </li>
            <li>
                <a href="CustomerBoard.do?command=customerBoard" class="nav-link"> 고객게시판 </a>
            </li>
        </ul>
    </div>
	<section>