<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.api.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>     
<%
	request.setCharacterEncoding("UTF-8");
%>  
<!DOCTYPE html>
<html>
	<c:if test="${!empty param.account }">
		<c:if test="${pageContext.request.method == 'GET'}">
				
		</c:if>
		<sql:setDataSource
			driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost/eeit53"
			user="root"
			password="root"
		/>	
		<sql:update>
			INSERT INTO member (account,passwd,realname) VALUES (?,?,?)
			<sql:param>${param.account }</sql:param>
			<sql:param>${BradUtils.encPasswd($param.passwd) }</sql:param>
			<sql:param>${param.realname }</sql:param>
		</sql:update>
		<c:redirect url="brad61.jsp"></c:redirect>
	</c:if>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="post">
			Account: <input name="account" /><br />
			Password: <input type="password" name="passwd" /><br />
			Realname: <input name="realname" /><br />
			<input type="submit" value="Add" /><br />
		</form>
	</body>
</html>