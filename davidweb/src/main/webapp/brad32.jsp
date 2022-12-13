<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad33.jsp" %>    
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String op = request.getParameter("op");
	String r = "";
	
	try{
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int intR = 0, mod = 0;
		switch(op){
			case "1":
				intR = intX + intY; r = intR+""; break;
			case "2":
				intR = intX - intY; r = intR+""; break;
			case "3":
				intR = intX * intY; r = intR+""; break;
			case "4":
				intR = intX / intY; mod = intX % intY; r = intR + "......" + mod; break;
		}
	}catch(Exception e){
		x = y = r =op= "";
	}
	
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<form>
			<input name="x" value="<%= x %>" />
			<select name="op">
				<option value="1" <%= (op.equals("1")?"selected":"") %>>加</option>
				<option value="2" <%= (op.equals("2")?"selected":"") %>>減</option>
				<option value="3" <%= (op.equals("3")?"selected":"") %>>乘</option>
				<option value="4" <%= (op.equals("4")?"selected":"") %>>除</option>
			</select>
			<input name="y" value="<%= y %>" />
			<input type="submit" value="=">
			<%= r %>
		</form>
		
	</body>
</html>