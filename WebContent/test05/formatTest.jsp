<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
<title> 포맷팅 태그 라이브러리 예제</title>
</head>
<body>
			<h2>fmt의 number태그를 이용한 숫자 포맷팅 예제 </h2>
			
			<c:set var="price" value="100000000"/>
			
			<fmt:formatNumber value="${price}" type="number" var="priceNumber" /> 
			
			<%--type="currency"로 주면 숫자앞에 원화 통화로 표현가능 
				currencySymbol ='?' 로 설정하면 원화를 ?로 표현 가능 
				groupingUsed="ture"로 설정하면 세자리 숫자마다 콤파, 표시합니다.
				설정하지 않으면 기본값이 true이기 떄문에 
				세자리 숫자마다 콤마,로 표시됩니다.	
			--%>
			통화로 표현시 : 
			<fmt:formatNumber value="${price}" 
			type="currency"
			currencySymbol="?"
			 groupingUsed="false"/>	
			 <br>
			 
			 통화로 표현시 : 
			 <fmt:formatNumber value="${price}" 
			type="currency"
			 groupingUsed="true"/>	
			 
			 <br>
			 
			 퍼센트로 표현시 :
			 
			 <%-- groupingUsed="false"로 설정하면 세 자리 숫자이다, 표시 되지 않습니다. --%> 
			 <fmt:formatNumber value="${price}" type="percent" groupingUsed="false"/> 
			 
			 <br>
			 <%-- ${priceNumber}는 ? 위쪽의 <fmt:formatNumber>태그에서 var속성에 정한 변수 이름으로 표현언어에서 출력함 ㅇ --%>
			 일반 숫자로 표현시 : ${priceNumber} <br>
			 
			 
			 <h2>formatDate 예제</h2>
			 <c:set var="now" value="<%=new Date()%>"/>
			 
			 ${now} <br><br>
			 
<!-- 			 2020년 5월 14일 목요일 -->
			 <fmt:formatDate value="${now}" type="date" dateStyle="full"/>
			 
			 <br>
			 
			 <fmt:formatDate value="${now}" type="date" dateStyle="short"/>
			 
			 <br>
			 <%-- 오전 10:53: 19 --%>
			 <fmt:formatDate value="${now}" type="time"/>
			 
			 
			 <br>
			  <%-- 2020년 5월 14일 목요일 오전 10시 56분 53초 KST --%>
			 <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
			 		
			 <br>
			 
			 <%-- pattern속성에 출력할 날짜포맷을 지정하여 얻습니다. 가장 중요함 --%>
			 <fmt:formatDate value="${now}" pattern="YYYY-MM-dd :hh:mm:ss" var="Date"/>
			 	
			 <br>
			 <br>
			 한국 현재 시간 : 
			 <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
			 <br><br>
			 <%--뉴욕 시간대로 변경합니다.--%>
			 <fmt:timeZone value="America/New York">
				뉴욕 현재 시간 : 
			 	<fmt:formatDate value="${now}" 
			 	type="both" dateStyle="full" timeStyle="full"/>
			 </fmt:timeZone>
			 
			 <br><br>
			 ${Date}  
			 		
</body>
</html>