<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- JSTL 라이브러리 중에 ... core라이브러리에 속한 태그를 재공 받아 사용하기 위한 설정 --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--클라이언트가 요청한 주소 중.. 컨텍스트 주소 얻기 --%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>


<%-- c:url 태그로 이동할 페이지 주소를 설정함 --%>
	<%--이동할 페이지로 전달할 데이터를 설정 --%>
<c:url var="url1" value="/test01/member1.jsp">
	<c:param name="id" value="hong"/>
	<c:param name="pwd" value="1234"/>
	<c:param name="name" value="홍길동"/>
	<c:param name="email" value="hong@test.com"/>
</c:url>

<a href="${contextPath}/test01/member1.jsp">회원정보출력</a>

<a href="${url1}">회원정보출력</a>





