<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL 라이브러리 중에 ... core라이브러리에 속한 태그를 재공 받아 사용하기 위한 설정 --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
</head>
<body>
		<%--
			pageContext 내장객체 내부에 request속성에 HttpServletRequest객체가 저장되어 있으므로 
			접근하여 contextPath속성값을 얻어 사용 
		 --%>
<%-- 		${contextPath} <br> --%>
		
		<c:set var ="contextPath" value="${pageContext.request.contextPath}"/>


		<form action="result.jsp">
				아이디 :<input type="text" size="20"><br>
				비밀번호 : <input type="password" size="20"> <br>
				<input type="submit" value="로그인"> <input type="reset" value="다시입력">		
		</form>
		<br><br>
		 <%--
		 	먼저 JSP에서 <a>태그를 이용해 다른 페이지로 이동하는 방법입니다.
		 	지금까지는 표현언어 EL로 pageContext.contextPath같은 속성을 그대로 사용했는데,
		 	<c:set>태그로 변수에 값을 저장하여 이용하면 변수값을 줄여서 사용할 수 있습니다.
		  		<a href="${pageContext.request.contextPath}/test03/memberForm.jsp">회원등록하기</a>
		  가독성이 좋아짐 
		  --%>
		
		<a href="${contextPath}/test03/memberForm.jsp">회원등록하기</a>

</body>
</html>