<%@page import="java.util.ArrayList"%>
<%@page import="sec01.ex02.MemberBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="5%"><b>이름</b></td>
			<td width="5%"><b>이메일</b></td>

		</tr>
		<%-- forward2.jsp페이지에서 재요청시 유지되는 request내장객체 메모리에 접근하여 MemberBean객체를 꺼내옴  
			그리고 난 후 MemberBean객체의 각변수에 접근하여 변수값을 얻어 출력--%>
	<%--EL표현언어에서 request내장객체에 저장되어 있는 속성이름으로 ArrayList에 접근한 후 
	인덱스 위치번호 0을 이용해 MemberBean객체의 정보를 얻어 출력 --%>	
		<tr align="center">
			<td>${membersList[0].id}</td>
			<td>${membersList[0].pwd}</td>
			<td>${membersList[0].name}</td>
			<td>${membersList[0].email}</td>
		</tr>
		
		
			<%-- forward2.jsp페이지에서 재요청시 유지되는 request내장객체 메모리에 접근하여 MemberBean객체를 꺼내옴  
			그리고 난 후 MemberBean객체의 각변수에 접근하여 변수값을 얻어 출력--%>
	<%--EL표현언어에서 request내장객체에 저장되어 있는 속성이름으로 ArrayList에 접근한 후 
	인덱스 위치번호 0을 이용해 MemberBean객체의 정보를 얻어 출력 --%>	
		<tr align="center">
			<td>${membersList[1].id}</td>
			<td>${membersList[1].pwd}</td>
			<td>${membersList[1].name}</td>
			<td>${membersList[1].email}</td>
		</tr>
		
		<%
			//request내장객체 메모리영역에서 ArrayList배열을 얻는다.
			ArrayList membersList = (ArrayList)request.getAttribute("membersList");	
			
			for(int i = 0; i < membersList.size(); i++){
				MemberBean m = (MemberBean)membersList.get(i);
			
		%>
		
		<tr align="center">
			<td><%= m.getId() %></td>	
			<td><%= m.getPwd() %></td>		
			<td><%= m.getName()%></td>		
			<td><%= m.getEmail() %></td>		
		</tr>
		<% 
		}
		%>
</table>
</body>
</html>