<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="loginAction.jsp" method="post">
			<h3>로그인</h3>
			<label for="userID">
				<span>아이디</span><input type="text" name="userID" id="userID">
			</label>
			<label for="userPassword">
				<span>비밀번호</span><input type="text" name="userPassword" id="userPassword">
			</label>
			<button type="submit" value="로그인">로그인</button>
			<a href="join.jsp">회원가입</a>
		</form>
	</div>
	
</body>
</html>