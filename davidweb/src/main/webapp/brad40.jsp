
<%@page import="tw.brad.api.Brad14"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String view = "brad41";
	String viewer = String.format("%s.jsp", view);
	
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	
	if (x != null && y != null){
		Brad14 brad14 = new Brad14( x,y);
		double r = brad14.process();
		request.setAttribute("x", x);
		request.setAttribute("y", y);
		request.setAttribute("r", r+"");
	}else{
		request.setAttribute("x", "");
		request.setAttribute("y", "");
		request.setAttribute("r", "");
	}
	
%>
<jsp:forward page="<%= viewer %>" />