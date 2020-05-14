<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL의 core라이브러리 태그를 사용을 위한 지시자 선언 --%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("UTF-8");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<%--전송된 단수를 가져와 <c:forEach>태그를 이용해 <tr>태그에 연속적으로 구구단을 출력하도록 작성 --%>
		
		<c:set var ="dan" value="${param.dan}"/>
		
		<table border="1" width="800" align="center">
			<tr align="center" bgcolor="green">
				<td colspan="2">
					<c:out value="${dan}"/> 단 출력
				</td>
			</tr>
	<c:forEach var="i" begin="1" end="9" step="1">
			<tr align="center">
				<td width="400">
					<c:out value="${dan}"/> * <c:out value="${i}"/>
				</td>
				<td width="400">
					<c:out value="${i*dan}"/>
				</td>
			</tr>
	</c:forEach>
</table>
	

</body>
</html>