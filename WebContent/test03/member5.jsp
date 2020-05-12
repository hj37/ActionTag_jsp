<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL 라이브러리 중에 ... core라이브러리에 속한 태그를 재공 받아 사용하기 위한 설정 --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<%
	request.setCharacterEncoding("UTF-8");
%>   

<%--
	<c:set>태그를 이용해 변수를 선언합니다.
	
	<c:set var="선언할 변수이름" value="변수에 저장할 값" scope="page"/>
 --%>
	<c:set var="id" value="hong" scope="page"/>
	<c:set var="pwd" value="1234" scope="page"/>
	<c:set var="name" value="${'홍길동'}" scope="page" />	
 	<c:set var="age" value="${22}" scope="page"/>
	<c:set var="height" value="${177}" scope="page"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 출력창</title>
</head>
<body>
	<%--http://localhost:8090/pro11/test03/member1.jsp로 요청! --%>
	<table align="center" border="1">
			<tr align="center" bgcolor = "lightgreen">
				<td width="7%"><b>아이디</b></td>
				<td width="7%"><b>비밀번호</b></td>
				<td width="7%"><b>이름</b></td>
				<td width="7%"><b>나이</b></td>
				<td width="7%"><b>키</b></td>
			</tr>
		
	<c:choose>
	<%--변수 name이 null이거나 빈문자열인지 체크 합니다. --%>
<%-- <c:when test="${name==null}"> --%>
		<c:when test="${empty name}">
		
			<tr align="center">
				<td colspan="5">이름을 입력하세요!!</td>
			</tr>
		</c:when>
		<%--name변수에 정상적으로 값이 저장되어 있다면 --%>
		<c:otherwise>
			<tr align="center">
				<td>${id}</td>
				<td>${pwd}</td>
				<td>${name}</td>
				<td>${age}</td>
				<td>${height}</td>
			</tr>
		</c:otherwise>
	</c:choose>
		
		
	</table>
</body>
</html>