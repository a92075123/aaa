<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big Company</h1>
		<hr />
		<c:import url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAgriculturalProduce.aspx" 
			var="data"></c:import>
		<%
			String data =  (String)pageContext.getAttribute("data");
			//out.print(data);
			
			//JSONArray root = new JSONArray(data);
			//out.println(root.length() + "<br />");
			/*
			for (int i=0; i<root.length(); i++){
				JSONObject row = root.getJSONObject(i);
				out.println(row.getString("Name") + ":" + row.getString("Tel") + "<br />");
			}
			*/
			
			JSONArray root = new JSONArray(data);
			LinkedList<HashMap<String,String>> travels = new LinkedList<>();
			for(int i=0; i<root.length(); i++){
				JSONObject row = root.getJSONObject(i);
				HashMap<String,String> travel = new HashMap<>();
				travel.put("name", row.getString("Name"));
				travel.put("tel", row.getString("ContactTel"));
				travel.put("city", row.getString("County"));
				travel.put("town", row.getString("Township"));
				travels.add(travel);
			}
			
			pageContext.setAttribute("travels", travels);
			
		%>
		<table border="1" width="100%">
			<tr>
				<th>Name</th>
				<th>Tel</th>
				<th>City</th>
				<th>Town</th>
			</tr>
			<c:forEach items="${travels }" var="travel">
				<tr>
					<td>${travel.name }</td>
					<td>${travel.tel }</td>
					<td>${travel.city }</td>
					<td>${travel.town }</td>
				</tr>
			</c:forEach>
		
		</table>
		
		
	</body>
</html>