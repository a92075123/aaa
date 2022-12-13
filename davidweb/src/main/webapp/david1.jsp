<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<select name="op" onChange="location = this.options[this.selectedIndex].value;" >
<c:forEach var="i" begin="0" end="${BangUtils.doubleToInt(pages)-1 }">
<option value="${url }${i+1 }" >${i+1 }</option>
<c:set var="url">bang59.jsp?page=</c:set>
public static int doubleToInt(String x) {
int intx = (int)Double.parseDouble(x);
return intx;
}
</c:forEach>
</select>
</body>
</html>