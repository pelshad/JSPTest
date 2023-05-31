<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="joinAction.jsp" method="post">
			<label for="userID">
				<input type="text" id="userID" name="userID" placeholder="아이디">
			</label>
			<label for="userPassword">
				<input type="password" id="userPassword" name="userPassword" placeholder="비밀번호">
			</label>
			<label for="userName">
				<input type="text" id="userName" name="userName" placeholder="이름">
			</label>
			<label for="userGender">
				<span>남</span> <input type="radio" value="1" id="userGender" name="userGender">
				<span>여</span> <input type="radio" value="2" id="userGender" name="userGender">
			</label>
			<label for="userEmail">
				<input type="text" id="userEmail" name="userEmail" placeholder="이메일">
			</label>
			<div>
				<button type="submit">회원가입</button>
			</div>
		</form>
	</div>
</body>
</html>