<%@page import="tw.brad.api.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member1 = new Member();
	member1.setId(1);
	member1.setAccount("brad");
	member1.setRealname("布萊德");
%>    
<jsp:useBean id="member2" class="tw.brad.api.Member">
</jsp:useBean>
<jsp:setProperty property="id" name="member2" value="2" />
<jsp:setProperty property="account" name="member2" value="andy" />
<jsp:setProperty property="realname" name="member2" value="安迪" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Member1:
		<%= member1.getId() %> : <%= member1.getAccount() %> : <%= member1.getRealname() %>
		<hr />
		Member2:
		<jsp:getProperty property="id" name="member2"/> :
		<jsp:getProperty property="account" name="member2"/> :
		<jsp:getProperty property="realname" name="member2"/>
		<hr />
		Member2:
		<%= member2.getId() %> : <%= member2.getAccount() %> : <%= member2.getRealname() %>
		<hr />
		Member1:
		
	</body>
</html>