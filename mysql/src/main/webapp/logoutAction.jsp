<%@page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.invalidate();
		PrintWriter script = response.getWriter();
		script.println("<script> alert('로그아웃 되었습니다.'); location.href='login.jsp'; </script>");
	%>
</body>
</html>