<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL의  core라이브러리 사용을 위한 선언  -->    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
  
 <%-- 
 	전체흐름 
 	-> 자바코드로 ArrayList 배열객체를 생성하여 문자열을 저장한 후 
 	<c:forEach>태그에서 사용할 수 있도록 <c:set>태그로 변수 list에 재할당 합니다.
 	그리고 varStatus의 loop속성을 이용해 반복 횟수를 출력합니다.
 	<c:forEach>태그의 items속성에 ArrayList배열을 설정 한 후 반복문 수행시 
 	ArrayList에 저장된 문자열을 반복 변수 data에 하나씩 가져와 출력합니다.
 --%> 
 
 <%
 	//자바코드로 ArrayList배열객체를 생성하여 문자열을 저장 
 	List dataList = new ArrayList();
 	dataList.add("hello");
 	dataList.add("world");
 	dataList.add("안녕하세요");
 %>
 
 <%--표현언어 EL에서 사용할 수 있도록 <c:set>태그를 이용해 list변수를 선언하고 datalist인 ArrayList를 할당함 --%>
 <c:set var="list" value="<%=dataList%>" />
  
 <%--반복변수 i를 1부터 10까지 1씩 증가시키면서 반복문을 수행합니다. --%>
 <c:forEach var="i" begin="1" end="10" step="1" varStatus="loop">
 	
 		i = ${i} &nbsp; &nbsp; &nbsp; 반복횟수 : ${loop.count}	<br>
 
 </c:forEach> 
  
 <br>
 
 <%-- 반복변수 i를 1부터 10까지 2씩 증가시키면서 반복문을 수행합니다. --%>
 <c:forEach var="i" begin="1" end="10" step="2">
 
 	5 * ${i} = ${5 * i} <br>
 
 </c:forEach>
 <br>
 
 
<%-- ArrayList 같은 컬렉션 배열객체에 저장된 데이터를 반복해서 얻어 반복변수 data에 하나씩 저장한 후 처리  요거는 매우 중요--%>
 <c:forEach var="data" items="${list}">
 
 	${data} <br>
 
 </c:forEach>
 
 <br>
 
 <c:set var="fruits" value="사과, 파인애플,바나나,망고,귤"/>
 
 <%-- 구분자, 를 이용해 문자열을 분리해서 출력합니다. --%>
 <c:forTokens var="token" items="${fruits}" delims=",">
 	
 	${token} <br>
  	
 </c:forTokens>
 
 
 