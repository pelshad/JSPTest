<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./assets/css/header.css" rel="stylesheet" type="text/css">
<link href="./assets/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<div>
			<span><a href="main.jsp">로고</a> </span>
		</div>
		<ul>
			<li><a href='bbs.jsp?pageNumber=1'>메뉴1</a></li>
			<li>메뉴2</li>
			<li>메뉴3</li>
			<li>메뉴4</li>
			<div>
				<% 
				String userID = null;
				userID = (String)session.getAttribute("userID");
				if(userID == null){ %>
					<a href='login.jsp'><span>로그인</span></a>
				<% } else { %>
					<a href='logoutAction.jsp'> <span>로그아웃</span></a>
				<% } %>
			</div>
		</ul>
		
	</header>
</body>
</html>