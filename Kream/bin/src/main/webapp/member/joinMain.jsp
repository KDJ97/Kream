<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="../js/jquery.serializejson.min.js"></script>

<style>
.content{
	margin: 0 auto;
	padding: 0 40px;
	max-width: 1280px;
}
.login_area{
	margin: 0 auto;
    padding: 60px 0 160px;
    width: 400px;
}
.login_title{
	padding-bottom: 50px;
    text-align: center;
    font-size: 0;
}
.intput_box{
	position: relative;
    padding: 10px 0 14px;
}
.input_title{
	font-size: 13px;
    letter-spacing: -.07px;
    line-height: 18px;
}
.input_item{
	position: relative;
}
.intput_txt{
	padding-right: 30px;
    height: 38px;
}
a, a:hover{
	text-decoration: none;
	color: black;
	font-size: 12px;
}
li{
	float: left;
	list-style: none;
	margin-left: 20px;
}
</style>
</head>
<body>
<div class="top_line fixed-top border-bottom text-end" style="height: 50px; display: flex; line-height: 50px; padding-right: 20px; background: white;">
<ul class = "text-end" style="margin-left: auto;">
	<li><a href="#">고객센터</a></li>
	<li><a href="#">마이페이지</a></li>
	<li><a href="<%= request.getContextPath() %>/member/loginForm.jsp">로그인</a></li>
</ul>
</div>


<div class="content md">
	<div class="login_area">
		<form class="was-validated" action="<%= request.getContextPath() %>/insertMember.do" method="post">
			<h2 class="login_title">로그인 타이틀</h2>
			<div class="input_box mb-4">
				<h3 class="input_title">이메일 주소</h3>
				<div class="input_item">
					<input type="email" class="form-control w-100" id="email" placeholder="예)shou123@ddit.or.kr" name="mem_email" required>
					<div class="valid-feedback"></div>
					<div class="invalid-feedback">이메일 주소를 정확히 입력해 주세요</div>
				</div>
			</div>
			
			<div class="input_box mb-4">
				<h3 class="input_title">비밀번호</h3>
				<div class="input_item">
					<input type="password" class="form-control w-100" id="pass" placeholder="Enter passward" autocomplete="off" name="mem_pass" required>
					<div class="valid-feedback"></div>
					<div class="invalid-feedback">영문, 숫자, 특수문자를 조합해서 입력해주세요. (8자 이상)</div>
				</div>
			</div>
			
			<div class="input_box mb-4">
				<h3 class="input_title">이름</h3>
				<div class="input_item">
					<input type="text" class="form-control w-100" id="name" placeholder="홍길동" name="mem_name" required>
					<div class="valid-feedback"></div>
					<div class="invalid-feedback"></div>
				</div>
			</div>
			
			<button type="submit" id="join" class="btn btn-outline-secondary w-100">가입 하기</button>
			
		</form>
	</div>
</div>
</body>
</html>