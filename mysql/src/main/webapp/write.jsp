<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./assets/css/write.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp" />
<body>
	<div class="wrap">
		<%
			String userID = null;
			userID = (String)session.getAttribute("userID");
			if(userID == null){
				PrintWriter script = response.getWriter();
				script.println("<script> alert('로그인 해주세요.'); location.href='login.jsp'; </script>");
			}
		%>
		<h2>글쓰기</h2>
		<form action="writeAction.jsp">
			<div>
				<label for='BTitle'>
					<span>제목</span>
					<input type="text" id="BTitle" name="BTitle">
				</label>
			</div>
			<div>
				<textarea id="BCtnt" name="BCtnt"></textarea>
			</div>
			<button>글 작성</button>
		</form>
		
	</div>
	
</body>
<jsp:include page="footer.jsp" />
</html>