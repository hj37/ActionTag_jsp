<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<%-- JSTL 라이브러리 중에 ... core라이브러리에 속한 태그를 재공 받아 사용하기 위한 설정 --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
    
<%
	request.setCharacterEncoding("UTF-8");
%>

<c:redirect url="/test01/member1.jsp">	<%--리다이렉트할 페이지를 설정  --%>

	<%--리다이렉트할 페이지로 전달할 매개변수를 설정함  --%>
	<c:param name="id" value="${'hong'}"/>
	<c:param name="pwd" value="${'1234'}"/>
	<c:param name="name" value="${'홍길동'}"/>
	<c:param name="email" value="${'hong@test.com'}"/>
	
</c:redirect>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>