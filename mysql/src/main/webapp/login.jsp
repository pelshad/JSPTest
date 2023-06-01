<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./assets/css/login.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>

</head>
<jsp:include page="header.jsp" />
<body>
	<div class='wrap'>
		<%
			String userID = null;
			userID = (String)session.getAttribute("userID");
		%>
		<form action="loginAction.jsp" method="post">
		<% if(userID != null){ %>
			<div><%= userID %> 아이디 로그인 중입니다.</div>
			<button type='button'>로그아웃</button>
		<%} else { %>
			<h3>로그인</h3>
			<label for="userID">
				<span>아이디</span><input type="text" name="userID" id="userID">
			</label>
			<label for="userPassword">
				<span>비밀번호</span><input type="text" name="userPassword" id="userPassword">
			</label>
			<div>
				<button type="submit" value="로그인">로그인</button>
				<a href="join.jsp">회원가입</a>
			</div>
			
		<% } %>
		</form>
	</div>
	
</body>
<jsp:include page="footer.jsp" />
</html>