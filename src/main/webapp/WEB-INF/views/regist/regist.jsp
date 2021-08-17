<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8;");
%>

<%@include file="/header.jsp"%>

<link href="./css/regist.css" rel="stylesheet">
 <div class="container regist-container">
            <div class="regist-header">
                <h1 class="fw-bold">회원가입</h1>
                <h5>Join, Coffee Comma</h5>
                <h4>커피콤마의 새 가족이 된 것을 환영합니다.</h4>
            </div>
            <div class="regist-form">
                <!-- TODO : 서버가 만들어지면 POST로 회원정보 전송하기 -->
                <form action="./regist.do" method="post">
                    <div>
                        <label for="registName" class="form-label">이름</label>
                        <input type="text" class="form-control" name="name" id="registName" placeholder="이름을 입력하세요." required>
                    </div>
                    <div>
                        <label for="registID" class="form-label">아이디</label>
                        <div class="id-form">
                            <input type="text" class="form-control" name="id" id="registID" placeholder="아이디를 입력하세요." onchange="regist.idChangeEvent(this)">
                            <input type="button" value="중복검사" class="btn btn-outline-secondary" onclick="regist.idDupliCheck()" required>
                        </div>
                        <label class="form-label valid-success" id="idValidLabel" style="display: none;">사용 가능한 아이디 입니다.</label>
                    </div>
                    <div>
                        <label for="registPW" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" name="password" id="registPW" placeholder="비밀번호를 입력하세요." required>
                    </div>
                    <div>
                        <label for="registPWC" class="form-label">비밀번호 확인</label>
                        <input type="password" class="form-control" id="registPWC" placeholder="비밀번호 확인" required>
                    </div>
                    <div>
                        <label for="registPhone" class="form-label">휴대폰 번호</label>
                        <input type="text" class="form-control" name="phone" id="registPhone" placeholder="휴대폰 번호를 입력하세요." required>
                        <div class="d-flex align-items-center">
                            <input type="checkbox" name="recv_phone" id="chkNewsPhone" checked>
                            <label class="light-label" for="chkNewsPhone">&nbsp;문자를 통한 이벤트 소식 수신에 동의합니다. (선택)</label>
                        </div>
                    </div>
                    <div>
                        <label for="registEmail" class="form-label">이메일</label>
                        <div class="input-group">
                            <input type="text" id="registEmailID" name="email1" class="form-control" placeholder="이메일 주소 입력..." required>
                            <span class="input-group-text">@</span>
                            <input type="text" id="registEmailServer" name="email2" class="form-control" placeholder="ex) naver.com" required>
                        </div>
                        <!-- <input type="email" class="form-control" id="registEmail" placeholder="이메일 주소를 입력하세요."> -->
                        <div class="d-flex align-items-center">
                            <input type="checkbox" name="recv_email" id="chkNewsEmail" checked>
                            <label class="light-label" for="chkNewsEmail">&nbsp;이메일를 통한 이벤트 소식 수신에 동의합니다. (선택)</label>
                        </div>
                    </div>
                    <div>
                        <label for="registAddr" class="form-label">주소</label>
                        <input type="text" class="form-control" name="address" id="registAddr" placeholder="주소를 입력하세요." required>
                    </div>
                    <div>
                        <label for="registBirth" class="form-label">생년월일</label>
                        <input type="date" class="form-control" name="birth" id="registBirth" placeholder="생년월일을 입력하세요." required>
                        <div class="d-flex align-items-center">
                            <input type="radio" name="solarLunar" id="solarCalender" checked>&nbsp;
                            <label for="solarCalender">양력</label>&nbsp;
                            <input type="radio" name="solarLunar" id="lunarCalender">&nbsp;
                            <label for="lunarCalender">음력</label>
                        </div>
                    </div>
                    <div class="d-flex justify-content-center">
                        <input class="btn btn-success btn-lg" type="submit" value="가입하기" onclick="return regist.submit()">
                    </div>
                </form>
            </div>
        </div>

<%@include file="/footer.jsp"%>