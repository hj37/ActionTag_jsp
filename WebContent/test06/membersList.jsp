<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- JSTL core, fmt --%>

<%-- JSTL의 core, Formatting 라이브러리 사용을 위한 선언 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	<table align="center" border="1">
		<tr align="center" bgcolor="lightgreen">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
			<td width="7%"><b>가입일</b></td>
		</tr>
		<c:choose>
			<c:when test="${requestScope.membersList == null}">
				<tr>
					<td colspan="5"><b>등록된 회원이 없습니다.</b></td>
				</tr>
			</c:when>
			<c:when test="${membersList != null }">   <!-- requestScope는 생략가능함 -->
				<%--ArrayList에 저장된 MemberBean객체를 하나씩 얻어 속성값을 얻어 각각 출력 --%>
				<c:forEach var="mem" items="${membersList}">
						<tr align="center">
							<td>${mem.id }</td>
							<td>${mem.pwd }</td>
							<td>${mem.name }</td>
							<td>${mem.email }</td>
							<td><fmt:formatDate value="${mem.joinDate}" type="date" dateStyle="full"/></td>
							
						</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
</body>
</html>