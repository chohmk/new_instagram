<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
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

<link rel="stylesheet" type="text/css" href="/static/css/signIn.css">
<body>
	<div class="d-flex justify-content-center">
		<div class="signIn-box m-5">
			<div class="d-flex justify-content-center">
				<form id="loginForm" action="/user/sign_in" method="post">
					<div class="d-flex">
						<div class="signIn-img">
							<img src="https://www.boannews.com/media/upFiles2/2020/10/671610541_5806.jpg">
						</div>
						<article >
							<div class="signIn-login bg-white">
								<img class="signIn-login-img" src="https://fontmeme.com/images/instagram-new-logo.png">
								<input type="text" class="login-input form-control" placeholder="아이디">
								<input type="password" class="login-input form-control mt-2" placeholder="비밀번호">
								
								<button type="submit" id="loginBtn" class="login-input btn mt-3">로그인</button>
								
								<br><hr>
								
								<div class="login-div"><span class="login-span">계정이 없으신가요?</span></div>
								<button type="submit" id="goSignUpBtn" class="btn form-control ml-2">가입하기</button>
								
							</div>
						</article>
					</div>
					
					<div class="footer-div">
					Meta &nbsp;&nbsp;&nbsp;&nbsp; 소개 &nbsp;&nbsp;&nbsp;&nbsp; 블로그 &nbsp;&nbsp;&nbsp;&nbsp; 
					채용 정보 &nbsp;&nbsp;&nbsp;&nbsp; 도움말 &nbsp;&nbsp;&nbsp;&nbsp; API &nbsp;&nbsp;&nbsp;&nbsp; 
					개인정보처리방침 &nbsp;&nbsp;&nbsp;&nbsp; 약관 &nbsp;&nbsp;&nbsp;&nbsp; 인기 &nbsp;&nbsp;&nbsp;&nbsp; 
					계정 &nbsp;&nbsp;&nbsp;&nbsp; 해시태그 &nbsp;&nbsp;&nbsp;&nbsp; 위치 &nbsp;&nbsp;&nbsp;&nbsp; 
					Instagram Lite &nbsp;&nbsp;&nbsp;&nbsp; 연락처 &nbsp;&nbsp;&nbsp;&nbsp; 업로드&비사용자
					</div>
					<div class="footer-div2">© 2022 Instagram from Meta</div>
					
				</form>
			</div>
		</div>
	</div>
	

	

</body>
</html>