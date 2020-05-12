<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%-- JSTL 라이브러리 중에 ... core라이브러리에 속한 태그를 재공 받아 사용하기 위한 설정 --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
 <%
 	request.setCharacterEncoding("utf-8");
 %>   
    
 <jsp:useBean id="membersList" class="java.util.ArrayList"/>
 <jsp:useBean id="membersMap" class="java.util.HashMap"/>
 <%
 	membersMap.put("id","park2");
 	membersMap.put("pwd","4321");
 	membersMap.put("name","박지성");
 	membersMap.put("email","park2@test.com");
 	
 	MemberBean m1 = new MemberBean("son","1234","손흥민","son@test.com");
 	MemberBean m2 = new MemberBean("ki","4321","기성용","ki@test.com");
 	
 	membersList.add(m1);
 	membersList.add(m2);
 	
 	//ArrayList -> HashMap에 추가 
 	membersMap.put("membersList",membersList);
 %>
 <%-- c:set태그를 이용해 HashMap에 저장되어 있는 ArrayList에 접근 하기 위해 사용하기 편리한 이름으로 설정함 --%>
 <c:set var="membersList" value="${membersMap.membersList}"/>
 
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
			<tr align="center">
				<td>${membersMap.id}</td>
				<td>${membersMap.pwd}</td>
				<td>${membersMap.name}</td>
				<td>${membersMap.email}</td>
			</tr>	
			<tr align="center"> <%--손흥민 꺼내오기 --%>
				<td>${membersList[0].id} </td>
				<td>${membersList[0].pwd} </td>
				<td>${membersList[0].name} </td>
				<td>${membersList[0].email} </td>
			</tr>
			
			<tr align="center"> <%--기성용 정보 얻어 출력태그로 설정한 변수 이름으로 접근하여 출력  --%>
				<td>${membersList[0].id} </td>
				<td>${membersList[0].pwd} </td>
				<td>${membersList[0].name} </td>
				<td>${membersList[0].email} </td>
			</tr>
			
			
			
	</table>
</body>
</html>