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
	<%--
		로그인창에서 ID를 입력한 경우와 입력하지 않는 경우 <c:if>태그를 이용해 
		각기 다른 화면을 출력하도록 설정하는 페이지
	
	 --%>
	<c:if test="${empty param.userID}">	<%--아이디를 입력 하지 않았을 경우 --%>
		아이디를 입력하세요 <br>
		<a href="login.jsp">로그인창</a>
	</c:if>
	
	<c:if test="${not empty param.userID}">	<%--아이디를 정상적으로 입력 했을 경우 --%>
		<c:if test="${param.userID == 'admin'}"> <%--아이디를 admin으로 입력했을 경우 --%>
			<h1>관리자로 로그인 했습니다.</h1>
			<form>
				<input type="button" value="회원정보 삭제하기">
				<input type="button" value="회원정보 수정하기">
			</form>
		</c:if>
		
		<c:if test="${param.userID != 'admin'}"> <%--입력한 아이디가 admin이 아닐경우 --%>
			<h1>환영합니다.
			<c:out value="${param.userID}"/> 님!!!</h1>
		</c:if>
	</c:if>
	
	
</body>
</html>