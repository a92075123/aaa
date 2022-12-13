<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.getMethod(); // get / post
	
	String name = request.getParameter("name");
	if (name == null) name = "World";
	
	int lottery1 = (int)(Math.random()*49+1);
	request.setAttribute("lottery1", lottery1);
	int lottery22 = (int)(Math.random()*49+1);
	int lottery33 = (int)(Math.random()*49+1);
	
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Welcome, <%= name %>
		<hr />
		<%@ include file="brad36.jsp" %>    <!-- 連接到brad36.jsp,編譯時期就去include -->
		<hr />
		<jsp:include page="brad37.jsp">      <!-- 連接到brad37.jsp,是在run time時期去include -->
		<jsp:param value="<%= lottery22 %>" name="key1"/>
		<jsp:param value="<%= lottery33 %>" name="key2"/>
		</jsp:include>
		<hr />
	</body>
</html>