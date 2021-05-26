<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/inc/menu_c.jspf"%>
<style>
	#loginDiv{
		height:1080px;
	}
	#loginDiv>h2{
		text-align: center;
		padding:100px 0;
	}
	#loginBtn, #registerBtn, #googleLogin, #naverLogin, #kakaoLogin{
		height:50px;
		width:358px;
		float:left;
		
	}
	#idInput, #pwdInput{
		height:50px;
		width:358px;
		margin:4px auto;
		padding:13px 40px 13px 18px;
		background-color: #fafafa;
		border:1px solid #dddddd;
	}
	#logStatus a:link, #logStatus a:active, #logStatus a:visited, #logStatus a:hover{
		color:black;
	} 
	#logStatus{
		margin-bottom:60px;
		text-align:right;
		font-size:17px;
		line-height: 35px;
	}
	#logStatus>div{
		width:358px;
	}
	#loginBtn{
		background-color: rgb(252,118,45);
		color:white;
		font-weight:700;
		border:none;
	}
	#registerBtn{
		background-color: rgb(224, 224, 224);
		color:black;
		font-weight:700;
	}
	#googleLogin{
		background-color:rgb(204, 55, 49);
		color:white;
		margin-top:15px;
		font-weight:700;
	}
	#naverLogin{
		background-color:rgb(29, 200, 0);
		color:white;
		font-weight:700;
	}
	#kakaoLogin{
		background-color:rgb(255, 235, 0);
		color:black;
		font-weight:700;
	}
	.loginBtn{
		border:none;
	}
	#searchId, #searchPwd, #register, #logStatus>div{
		font-size:13px;
	}
	#loginCenter{
		margin:0 auto;
		width:400px;
	}
</style>
<div class="section" id="loginDiv">
	<h2>로그인</h2>
	<div id="loginCenter">
		<form method="post" action="loginOk">
			<input type="text" name="userid" placeholder="아이디를 입력해주세요" id="idInput" value="seller"/><br/>
			<input type="password" name="userpwd" placeholder="비밀번호를 입력해주세요" id="pwdInput" value="seller"/><br/>
			<input type="submit" value="로그인" id="loginBtn"/>
			<div id="logStatus">
				<!-- <input type="checkbox" name="logalways"/>로그인상태유지 -->
				<div><a href="searchId" id="searchId">아이디찾기</a> | <a href="searchPwd" id="searchPwd">비밀번호찾기</a> | <a href="register" id="register">회원가입</a></div>
			</div>
	<!-- 		<input type="button" value="회원가입" id="registerBtn"/> -->
			<c:if test="${logStop != null}">
				<script>alert(" 정지된 아이디 입니다\n 정지 해제 예정일 : ${stopdate}")</script>
			</c:if>
			<c:if test="${Type != null}">
				<script>alert(" 탈퇴한 아이디 입니다")</script>
			</c:if>
			<c:if test="${logTry != null}">
				<script>alert(" 아이디 또는 비밀번호가 잘못 입력되었습니다")</script>
			</c:if>
			<c:if test="${logId != null}">
				<script>alert("이미 로그인 되어 있습니다");location.href="/sshj"</script>
			</c:if>
			<!-- <input type="button" value="Google 로그인" id="googleLogin" class="loginBtn"/>
			<input type="button" value="네이버 로그인" id="naverLogin" class="loginBtn"/>
			<input type="button" value="Kakao 로그인" id="kakaoLogin" class="loginBtn"/> -->
		</form>
	</div>
</div>