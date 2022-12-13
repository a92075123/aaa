<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name2 = request.getParameter("name");
	if (name2 == null) name2 = "World";
	
	int lottery2 = (Integer)request.getAttribute("lottery1");
	
%>
I am <%= name2 %><br />
Lottery: <%= lottery2 %><br />