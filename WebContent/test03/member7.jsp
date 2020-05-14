<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%-- JSTL 라이브러리 중에 ... core라이브러리에 속한 태그를 재공 받아 사용하기 위한 설정 --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
 <%
 	request.setCharacterEncoding("utf-8");

 	MemberBean m1 = new MemberBean("son","1234","손흥민","son@test.com");
 	MemberBean m2 = new MemberBean("ki","4321","기성용","ki@test.com");
 	MemberBean m3 = new MemberBean("park","1212","박지성","park@test.com");
 	
 	List membersList = new ArrayList();
 	
 	membersList.add(m1);
 	membersList.add(m2);
 	membersList.add(m3);
 	
 %>
 <%-- c:set태그를 이용해 HashMap에 저장되어 있는 ArrayList에 접근 하기 위해 사용하기 편리한 이름으로 설정함 --%>
 <c:set var="membersList" value="<%=membersList%>"/>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center" border="1">
			<tr align="center" bgcolor = "lightgreen">
				<td width="20%"><b>아이디</b></td>
				<td width="20%"><b>비밀번호</b></td>
				<td width="20%"><b>이름</b></td>
				<td width="20%"><b>이메일</b></td>
			</tr>
	<%--ArrayList배열에 저장된 MemberBean객체(회원정보)개수만큼 반복변수 i를 0부터 1씩 증가시키면서 forEach문을 실행합니다. --%>
<c:forEach var="i" begin="0" end="2" step="1">
		<tr>
			<%--반복변수 i를 ArrayList의 인덱스로 사용해 회원정보를 차례대로 얻어 출력합니다.--%>
			<td>${membersList[i].id }</td>
			<td>${membersList[i].pwd }</td>
			<td>${membersList[i].name }</td>
			<td>${membersList[i].email }</td>
			
		</tr>
</c:forEach>

 <c:forEach var="memberbean" items="${membersList}">
		<tr align="center">
			<td>${memberbean.id}</td>
			<td>${memberbean.pwd}</td>
			<td>${memberbean.name}</td>
			<td>${memberbean.email}</td>
		</tr>
</c:forEach>



	</table>
</body>
</html>