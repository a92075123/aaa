<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>     
<!DOCTYPE html>
<html>
	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/eeit53"
		user="root"
		password="root"
	/>	
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
				<sql:update>
					INSERT INTO member (account,passwd,realname) VALUES (?,?,?)
					<sql:param>test7</sql:param>
					<sql:param>test7</sql:param>
					<sql:param>test7</sql:param>			
				</sql:update>
				<sql:query var="rs_lastid">
					SELECT last_insert_id()  as lastid
				</sql:query>
				${rs_lastid.rows[0].lastid }<br />
				<sql:update>
					UPDATE member SET account=? WHERE id = ?
					<sql:param>newtest</sql:param>
					<sql:param>12</sql:param>
				</sql:update>
			
		
	</body>
</html>