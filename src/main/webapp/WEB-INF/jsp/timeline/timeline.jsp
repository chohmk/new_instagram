<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>타임라인</title>
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

<link rel="stylesheet" type="text/css" href="/static/css/timeline.css">
<body>
	<div id="wrap" class="container">
		<header class="timeline-header bg-secondary d-flex justify-content-between align-items-center">
			<!--  header logo 이미지 -->
			<img class="timeline-logo-img" src="https://cdn.nbntv.co.kr/news/photo/202112/946283_55711_4837.png">
			
			<!-- userName, 로그아웃 -->
			<div>
				<span class="text-white mr-3">${userName}님 안녕하세요</span>
				<button type="button" id="logoutBtn" class="btn">로그아웃</button>
			</div>
			
		</header>
		
		<!-- 타임라인 영역 -->
		<section class="timline-section bg-secondary">
			
		</section>
	</div>
	
	
</body>
</html>







