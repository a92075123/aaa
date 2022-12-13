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
	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/eeit53"
		user="root"
		password="root"
	/>	
	
	<c:if test="${!empty param.id }">
		<sql:update>
			UPDATE member SET account=?,passwd=?,realname=? WHERE id=?
			<sql:param>${param.account }</sql:param>
			<sql:param>${BradUtils.encPasswd($param.passwd) }</sql:param>
			<sql:param>${param.realname }</sql:param>
			<sql:param>${param.id }</sql:param>
		</sql:update>
		<c:redirect url="brad61.jsp"></c:redirect>
	</c:if>
	
	
	<sql:query var="rs">
		SELECT * FROM member WHERE id = ?
		<sql:param>${param.editid }</sql:param>
	</sql:query>	

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="post">
			<input type="hidden" name="id" value="${param.editid }" />
			Account: <input name="account" value='${rs.rows[0].account }' /><br />
			Password: <input type="password" name="passwd" /><br />
			Realname: <input name="realname" value='${rs.rows[0]["realname"] }' /><br />
			<input type="submit" value="Update" /><br />
		</form>
	</body>
</html>