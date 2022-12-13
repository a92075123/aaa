<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.api.*" %>
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

	<sql:query var="rs1">
		SELECT * FROM food
	</sql:query>
	
	<c:set var="rpp" value="10" />
	<c:set var="pages">${rs1.rowCount % rpp == 0? rs1.rowCount / rpp : (rs1.rowCount - (rs1.rowCount % rpp)) / rpp + 1 }</c:set>

	<c:set var="page">${param.page == null ? 1 : param.page }</c:set>		
	<c:set var="start">${(page - 1) * rpp }</c:set>
	<c:set var="prev">${page - 1 == 0 ? 1 : page - 1 }</c:set>
	<c:set var="next">${BradUtils.nextPage(page, pages) }</c:set>
	<c:set var="url"> brad59.jsp?page=</c:set>
		
		
	<sql:query var="rs">
		SELECT * FROM food ORDER BY id LIMIT ${start }, ${rpp }
	</sql:query>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		資料筆數: ${rs1.rowCount } / ${page } / ${pages } | 
		<a href="?page=${prev }">上一頁</a> | 
		<a href="?page=${next }">下一頁</a>
		<select name="op" onChange="location = this.options[this.selectedIndex].value;" >				
		<c:forEach var="i" begin="0" end="${BradUtils.doubleToInt(pages )-1 }">
		<option value="${url }${i+1 }" >${i+1 }</option>
		</c:forEach>
		</select>
		<hr />
		<table border="1" width="100%">
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Tel</th>
				<th>City</th>
				<th>Town</th>
				<th>Photo</th>
			</tr>
			<c:forEach items="${rs.rows }" var="row">
				<tr>
					<td>${row.id }</td>
					<td>${row.name }</td>
					<td>${row.tel }</td>
					<td>${row.city }</td>
					<td>${row.town }</td>
					<td><img src="${row.picurl }" width="100px" height="60px" /></td>
				</tr>
			</c:forEach>
		</table>
		
	</body>
</html>