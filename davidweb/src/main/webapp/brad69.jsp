<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//if (request.getMethod().equals("GET")) return;
	String max = request.getParameter("max");
	int intMax = 0;
	try{
		if (max != null){
			intMax = Integer.parseInt(max);
		}
	}catch(Exception e){}
	out.print((int)(Math.random()*intMax));
%>