<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String start = request.getParameter("start");
	String row = request.getParameter("row");
	String col = request.getParameter("col");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<table border='1' width='100%'>
			<%
				int ROW = 2;
				int START = 2;
				int COL = 4;
				
				if (start != null) START = Integer.parseInt(start);
				if (row != null) ROW = Integer.parseInt(row);
				if (col != null) COL = Integer.parseInt(col);
				
				
				for (int k=0; k<ROW; k++){	// 2 => row
					out.print("<tr>");
					for (int j=START; j<=(START+COL-1); j++){	// 2 => start
						int newj = j + k*COL;	// 4 => col
						
						if ((j+k) % 2 == 0){
							out.print("<td bgcolor='pink'>");
						}else{
							out.print("<td bgcolor='yellow'>");
						}
						
						for (int i=1; i<=9; i++){
							int r = newj * i;
							out.println(String.format("%d x %d = %d<br />",newj,i, r));
						}
						out.print("</td>");
					}
					out.print("</tr>");
				}
			%>
		</table>
	</body>
</html>