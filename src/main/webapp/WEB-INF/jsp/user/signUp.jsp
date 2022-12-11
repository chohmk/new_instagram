<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
</head>
<!-- jquery : bootstrap, datepicker -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/static/css/signUp.css">
<body>
	<div class="d-flex justify-content-center">
		<div class="signUp-box m-5">
			<div class="d-flex justify-content-center">
				<form id="signUpForm" action="/user/sign_up" method="post">
					<div class="signUp-login bg-white">
						<img class="signUp-login-img" src="https://fontmeme.com/images/instagram-new-logo.png">
						
						<div class="signUp-div1">친구들의 사진과 동영상을 보려면</div>
						<div class="signUp-div1">가입하세요.</div>
						<br><br>
						
						<input type="text" class="signUp-input form-control" placeholder="아이디">
						<input type="password" class="signUp-input form-control mt-2" placeholder="비밀번호">
						<input type="text" class="signUp-input form-control mt-2" placeholder="이름">
						<input type="text" class="signUp-input form-control mt-2" placeholder="이메일">
						<br>
						
						<div class="signUp-div2">저희 서비스를 이용하는 사람이 회원님의 연락처</div>	
						<div class="signUp-div2">정보를 Instagram에 업로드했을 수도 있습니다. <b>더</b></div>
						<div class="signUp-div2"><b>알아보기</b></div>
					
								
						<button type="submit" id="signUpBtn" class="signUp-input btn mt-3">가입하기</button>
								
						<br><hr>
								
						<div class="signUp-div"><span class="signUp-span">계정이 있으신가요?</span></div>
						<button type="submit" id="goSignInBtn" class="btn form-control ml-2">로그인</button>
								
					</div>
				</form>
			</div>
		</div>
	
	</div>
</body>
</html>