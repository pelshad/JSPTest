<%@ page import='java.io.PrintWriter' %>
<%@ page import="bbs.BbsDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="bbs" class="bbs.Bbs" scope="page" />
<jsp:setProperty property="BTitle" name="bbs"/>
<jsp:setProperty property="BCtnt" name="bbs"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		PrintWriter script = response.getWriter();
		String userID = (String)session.getAttribute("userID");
		if(userID == null){
			script.println("<script> alert('로그인 해주세요'); location.href='login.jsp';</script>");
		}
		
		BbsDAO bbsDAO = new BbsDAO();
		String date = bbsDAO.getDate();
		int result = bbsDAO.write(bbs.getBTitle(),userID, bbs.getBCtnt());
		if(result == 1){
			script.println("<script> alert('게시글 등록이 완료되었습니다.'); location.href='bbs.jsp'; </script>");
		} else {
			script.println("<script> alert('게시글 등록에 실패했습니다.'); location.href='bbs.jsp'; </script>");
		}
	%>
</body>
</html>