<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- join -->
	<section class="cont_login container" id="accountJoin">
		<!-- 		<form action="../member/join_ok.do" method="post" id="frm-join"> -->
		<div class="box_login box_join">
			<h2 class="tit">
				간편하게 가입하고 하루의<br /> 다양한 튜터를 만나보세요.
			</h2>
			<div class="box_inp">
				<div class="line_inp">
					<input type="text" name="name" ref="name" v-model="name"
						id="userName" placeholder="이름(실명)을 입력해주세요">
					<p class="info_error" id="nameError1">{{message}}</p>
				</div>
				<div class="line_inp">
					<input type="text" name="email" ref="email" v-model="email"
						id="userEmail" placeholder="이메일 주소를 입력해주세요">
					<p class="info_error" id="emailError2">{{message}}</p>
				</div>
				<div class="line_inp line_pw">
					<input type="password" name="password" ref="password"
						v-model="password" id="userPassword" placeholder="비밀번호를 입력해주세요">
					<button type="button" class="type_pwd hide"></button>
					<p class="info_error" id="passError2">{{message}}</p>
				</div>
				<div class="line_inp line_pw">
					<input type="password" name="confirm" id="confirm"
						placeholder="비밀번호를 재입력해주세요">
					<button type="button" class="type_pwd hide"></button>
					<p class="info_error" id="confirmError1">{{message}}</p>
				</div>
			</div>
			<div class="box_btn">
				<button class="btn_submit" type="submit">회원가입</button>
			</div>
		</div>
		<!-- 		</form> -->
	</section>

	<!-- //join -->
	<script>
		//비밀번호 숨기기
	</script>
</body>
</html>