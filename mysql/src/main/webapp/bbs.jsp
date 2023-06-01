<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="./assets/css/bbs.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<jsp:include page="header.jsp" />
<body>
	<%
		int pageNumber = 1;
		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<div class="wrap">
		<%
			String userID = null;
			userID = (String)session.getAttribute("userID");
		%>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제  목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<%
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
					for(int i=0; i < list.size(); i++){
				%>
				<tr>
					<td><%= list.get(i).getBID() %></td>
					<td> 
						<a href="view.jsp?BID=<%= list.get(i).getBID() %>">
							<%= list.get(i).getBTitle() %>
						</a> 
					</td>
					<td><%= list.get(i).getUserID() %></td>
					<td><%= list.get(i).getBDate() %></td>
				</tr>
				<% } %>
			</tbody>
		</table>
		<% if(userID != null){ %>
			<button onclick="moveWrite()">글쓰기</button>
		<% } %>
		<% if(pageNumber !=1){ %>
			<a href="bbs.jsp?pageNumber=<%= pageNumber - 1%>"> 이전</a>
		<% } %>
		<% if(bbsDAO.nextPage(pageNumber + 1)){ %>
			<a href="bbs.jsp?pageNumber=<%= pageNumber + 1 %>">다음</a>
		<% } %>
	</div>
	<script>
		const moveWrite = () => {
			location.href='write.jsp';
		}
	</script>
</body>
<jsp:include page="footer.jsp" />
</html>