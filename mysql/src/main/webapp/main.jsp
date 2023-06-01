<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./common.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>

</head>
<jsp:include page="header.jsp" />
<body>
	<div class="wrap">
		<%
			String userID = null;
			userID = (String)session.getAttribute("userID");
		%>
		<h1>메인페이지</h1>
	</div>
	
</body>
<jsp:include page="footer.jsp" />
</html>