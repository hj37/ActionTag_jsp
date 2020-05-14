<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--

	message1.jsp파일은
	<fmt:setLocale>태그를 이용해 표시할 locale(언어)를 지정한 후 
	<fmt:bundle>태그를 이용해 resource패키지의 properties파일의 내용을
	읽어 옵니다.
	그리고 <fmt:message>태그를 이용해.properties파일의 키(key)에 대한 값을
	각각 얻어 출력합니다.
 --%>
  
  
<%-- JSTL의 core, Formatting 라이브러리 사용을 위한 선언 --%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%
 
 	request.setCharacterEncoding("UTF-8");
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국어 기능</title>
</head>
<body>
	<%--setLocale태그를 이용해 표시할 언어를 영어로 지정합니다. --%>
<%-- 		<fmt:setLocale value="en_US"/> --%>
	
		<fmt:setLocale value="ko_KR"/>
	<h1>
		회원정보<br><br>
		
<%-- bundle태그를 이용해 resource패키지 아래의 member.properties파일을 읽어옵니다. --%>
		<fmt:bundle basename="resource.member">
		<%-- message태그의 key속성에 
		member.properties파일의 key를 지저앟여 값(Value)를 얻어 출력함 --%>
		이름 : <fmt:message key="mem.name"/>		<br>
		주소 : <fmt:message key="mem.address"/>	<br>
		직업 : <fmt:message key="mem.job"/>
		
		</fmt:bundle>
	</h1>
</body>
</html>