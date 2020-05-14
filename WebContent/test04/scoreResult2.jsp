<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<%--입력한 시험점수를 request영역에서 꺼내어서 score변수에 저장 --%>
	<c:set var="score" value="${param.score}" />

	<h1>
		시험점수
		<c:out value="${score}" />
	</h1>
	<br>

	<%-- 학점변환시 <c:choose>태그를 이용해 시험점수가 0 ~ 100점 사이인지를 먼저 체크한 후 
		전송된 시험점수가 유효범위이면? 그 다음에 학점을 변환하도록 작성함.
	 --%>

	<c:choose>
		<c:when test="${score>= 0 && score <= 100 }">
			<%--조건식이 여러개인 경우 <c:choose>안의 <c:when>태그를 이용해 점수를 해당하는 학점으로 변환함. --%>
			<c:choose>
				<c:when test="${score >= 90 && score <= 100}">
					<h1>A학점입니다.</h1>
				</c:when>
				<c:when test="${score >= 80 && score < 90}">
					<h1>B학점입니다.</h1>
				</c:when>
				<c:when test="${score >= 70 && score < 80}">
					<h1>C학점입니다.</h1>
				</c:when>
				<c:when test="${score >= 60 && score < 70}">
					<h1>D학점입니다.</h1>
				</c:when>
				<c:otherwise>
					<h1>F학점입니다.</h1>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<%--시험점수가 범위를 벗어 났으면 입력 창으로 다시 이동할 수 있도록  --%>
			<h1>점수를 잘못 입력 했습니다. 다시 입력해 주세요.</h1>
			<a href="scoreTest.jsp">점수 입력 창으로 이동</a>
		</c:otherwise>
	</c:choose>







</body>
</html>