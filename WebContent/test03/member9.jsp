<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%-- JSTL 라이브러리 중에 ... core라이브러리에 속한 태그를 재공 받아 사용하기 위한 설정 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
 	request.setCharacterEncoding("utf-8");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightgreen">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<c:choose>
			<c:when test="${empty param.id}">
				<tr align="center">
					<td colspan="5">아이디를 입력하세요 !!</td>

				</tr>
			</c:when>
			<c:otherwise>
				<tr align="center">
					<td><c:out value="${param.id}" /></td>
					<td><c:out value="${param.pwd}" /></td>
					<td><c:out value="${param.name}" /></td>
					<td><c:out value="${param.email}" /></td>
				</tr>
			</c:otherwise>
		</c:choose>




	</table>
</body>
</html>