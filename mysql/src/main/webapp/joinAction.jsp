<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>
<jsp:setProperty property="userEmail" name="user"/>
<jsp:setProperty property="userName" name="user"/>
<jsp:setProperty property="userGender" name="user"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		PrintWriter script = response.getWriter();
		if(user.getUserID() == null || 
			user.getUserPassword() == null || 
			user.getUserEmail() == null || 
			user.getUserName() == null || 
			user.getUserGender() == null){
			script.println("<script> alert('누락된 정보가 있습니다'); history.back(); </script>");
		} else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.join(user);
			if(result == -1){
				script.println("<script> alert('이미 존재하는 아이디입니다.'); history.back(); </script>");
			} else {
				script.println("<script> alert('회원가입이 완료되었습니다.'); location.href='login.jsp'; </script>");
			}
	
	}
	%>
</body>
</html>