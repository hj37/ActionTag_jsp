<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSTL의 core라이브러리 태그 사용을 위한 선언 --%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- JSTL의 문자열함수를 사용을 위한 선언 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

	<c:set var="title1" value="hello world!" />
	
	<c:set var="title2" value="쇼핑몰중심JSP입니다!"/>
	
	<c:set var="str1" value="중심"/>
	
	<h2>여러가지 문자열 함수 기능</h2>
	title1 = "hello world"<br>
	title2 = "쇼핑몰중심JSP입니다!"<br>
	str1 = "중심"<br><br>
	<%-- fn:length(title1) -> 문자열 길이를 반환함 --%>
	fn:length(title1) = ${ fn:length(title1) } <br>
						<%--fnLtoUpperCase(title1) -> 문자열을 대문자로 변환해서 반환 --%>
	fn:toUperCase(title1) = ${ fn:toUpperCase(title1) }<br>
	<%-- 문자열을 소문자로 변환해서 반환 --%>
	fn:toLowerCase(title1) = ${ fn:toLowerCase(title1) }<br>
	
	<%--title1변수에 저장되어 있는 문자열중... 4~5번째 문자열을 잘라내서 반환함. --%>
	fn:substring(title1,3,6) = ${fn:substring(title1,3,6) } <br>
	
	<%--title1변수에 저장되어 있는 문자열 hello world!의 앞뒤 공백 제거해서 반환함. --%>
	fn:trim(title1) = ${ fn:trim(title1) } <br> 
	
	<%-- 문자열에서 공백을 /로 대체합니다. --%>
	fn:replace(title1," ","/") = ${ fn:replace(title1," ","/")} <br>
	
	<%--title2변수에 저장된 문자열에서 str1변수에 저장된 문자열이 있는지 판별합니다. --%>
	fn:indexOf(title2,str1) = ${ fn:indexOf(title2,str1) } <br>
	
	<%--title1변수에 저장되어 있는 문자열에중에서.. str1변수에 저장된 문자열값이 포함되어 있는지 판단
		포함되어 있으면 true를 반호나 포함되어 있지 않으면 false를 반환
	 --%>
	fn:contains(title1,str1) = ${ fn:contains(title1,str1) } <br> <%--false --%>
	
	fn:contains(title2,str1) = ${ fn:contains(title2,str1) } <br> <%--true--%>
	
	 