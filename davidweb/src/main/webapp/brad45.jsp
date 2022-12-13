<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	int id2 = Integer.parseInt(id);
	String account = request.getParameter("account");
	String realname = request.getParameter("realname");
%>    
<jsp:useBean id="member2" class="tw.brad.api.Member">
</jsp:useBean>
<jsp:setProperty property="id" name="member2" value="<%= id2 %>" />
<jsp:setProperty property="account" name="member2" value="<%= account %>" />
<jsp:setProperty property="realname" name="member2" value="<%= realname %>" />    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Member2:
		<jsp:getProperty property="id" name="member2"/> :
		<jsp:getProperty property="account" name="member2"/> :
		<jsp:getProperty property="realname" name="member2"/>
	</body>
</html>