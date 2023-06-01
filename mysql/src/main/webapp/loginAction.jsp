<%@page import="java.io.PrintWriter" %>
<%@page import="user.UserDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		PrintWriter script = response.getWriter();
		if(session.getAttribute("userID") != null){
			script.println("<script> alert('이미 로그인 되어 있습니다.'); location.href='main.jsp'; </script>");
		}
	
		UserDAO userDAO = new UserDAO();
		int result = userDAO.login(user.getUserID(), user.getUserPassword());
		switch(result){
			case 1:
				session.setAttribute("userID", user.getUserID());
				script.println("<script> alert('로그인 성공'); location.href='main.jsp'; </script>");
				break;
			case 0:
				script.println("<script> alert('비밀번호가 틀립니다.'); history.back(); </script>");
				break;
			case -1:
				script.println("<script> alert('존재하지 않는 아이디입니다.'); history.back(); </script>");
				break;
			case -2:
				script.println("<script> alert('데이터 베이스 오류입니다.'); history.back(); </script>");
				break;
		}
	%>
</body>
</html>