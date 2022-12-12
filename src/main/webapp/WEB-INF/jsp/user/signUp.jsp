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
						
						<div class="d-flex">
							<input type="text" id="loginId" name="loginId"
								class="signUp-inputId form-control col-9" placeholder="아이디">
							<button type="button" id="loginIdCheckBtn"
								class="btn">중복확인</button>
						</div>
						<%-- 아이디 체크 결과 --%>
						<%-- d-none 으로 보이지 않게 한다. --%>
						<div id="idCheckLength" class="small text-danger ml-3 d-none">ID를
							4자 이상 입력해주세요.</div>
						<div id="idCheckDuplicated" class="small text-danger ml-3 d-none">이미
							사용중인 ID입니다.</div>
						<div id="idCheckOk" class="small text-success ml-3 d-none">사용 가능한
							ID 입니다.</div>
						
						<input type="password" id="password" name="password" class="signUp-input form-control mt-2" placeholder="비밀번호">
						<input type="password" id="confirmPassword" name="confirmPassword" class="signUp-input form-control mt-2" placeholder="비밀번호 확인">
						<input type="text" id="name" name="name" class="signUp-input form-control mt-2" placeholder="이름">
						<input type="text" id="email" name="email" class="signUp-input form-control mt-2" placeholder="이메일">
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
	
	<script>
		$(document).ready(function() {
			$('#loginIdCheckBtn').on('click', function() {
				let loginId = $('#loginId').val().trim();

				if (loginId.length < 4) {
					$('#idCheckLength').removeClass('d-none');
					$('#idCheckOk').addClass('d-none');
					$('#idCheckDuplicated').addClass('d-none');
					return;
				}

				// ajax 중복확인
				$.ajax({
					url : "/user/is_duplicated_id",
					data : {"loginId" : loginId},
					success : function(data) {
						if (data.result) {
							// 중복이면
							$('#idCheckDuplicated').removeClass('d-none');
							$('#idCheckLength').addClass('d-none');
							$('#idCheckOk').addClass('d-none');
						} else {
							$('#idCheckOk').removeClass('d-none');
							$('#idCheckLength').addClass('d-none');
							$('#idCheckDuplicated').addClass('d-none');
						}
					},
					error : function(e) {
						alert("아이디 중복확인에 실패했습니다.");
					}
				});

			}); // 중복확인 끝

			$('#signUpForm').on('submit', function(e) {
				e.preventDefault(); // submit 기능 중단

				let loginId = $('#loginId').val().trim();
				let password = $('#password').val().trim();
				let confirmPassword = $('#confirmPassword').val().trim();
				let name = $('#name').val().trim();
				let email = $('#email').val().trim();

				// validation 
				if (loginId == "") {
					alert("아이디를 입력해주세요.");
					return false;
				}
				if (password == "" || confirmPassword == "") {
					alert("비밀번호를 입력해주세요.");
					return false;
				}
				if (password != confirmPassword) {
					alert("비밀번호가 일치하지 않습니다.");
					return false;
				}
				if (name == "") {
					alert("이름을 입력해주세요.");
					return false;
				}
				
				if (email == "") {
					alert("이메일을 입력해주세요.");
					return false;
				}
				// 아이디 중복확인이 완료되었는지 확인
				if ($('#idCheckOk').hasClass('d-none') == true) {
					alert("아이디 중복확인을 다시 해주세요");
					return false;
				}

				// 회원가입 ajax
				let url = $(this).attr('action');
				let params = $(this).serialize();

				$.post(url, params).done(function(data) {
					if (data.code == 100) {
						alert("가입을 환영합니다.");
						location.href = "/user/sign_in_view";
					} else {
						alert("회원가입에 실패하였습니다.");
					}
				}); // ajax 끝

			}); // 가입하기 버튼 끝
			
			$('#goSignInBtn').on('click', function(e) {
				e.preventDefault();
				location.href="/user/sign_in_view";
			}); // 로그인 하러가기 버튼 끝
		}); // ready끝
			
	</script>
</body>
</html>