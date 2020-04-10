<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//입력한 회원정보를 표시하기전에 한글 인코딩을 설정합니다.
	request.setCharacterEncoding("UTF-8");

	//표현식 <%= %  > 출력하기 위해 request객체 getParamter()메소드를 이용해 
	//입력한 회원정보를 가져옵니다.
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1"  align="center">
			<tr align="center" bgcolor="#99ccff">
				<td width="20%"><b>아이디</b></td>
				<td width="20%"><b>비밀번호</b></td>
				<td width="20%"><b>이름</b></td>
				<td width="20%"><b>이메일</b></td>			
			</tr>
	<%-- request객체의 getParameter()메소드로 가져온 회원정보를 표현식 <%= %>을 이용하여 출력 --%>
			<tr>
				<td><%=id%></td>
				<td><%=pwd%></td>
				<td><%=name%></td>
				<td><%=email%></td>
			</tr>
			
<%-- param내장객체는 request내장객체 영역에 접근할 수 있게 도와주는 내장객체입니다.
	 param내장객체를 이용해 request내장객체영역에 접근하여 
	 getParameter메소드를 사용하지 않고 바로 입력한 회원정보를 얻어낼 수 있다.
 --%>			
			<tr>
				<td>${param.id}</td>
				<td>${param.pwd}</td>
				<td>${param.name}</td>
				<td>${param.email}</td>				

			</tr>
		
		
		</table>
</body>
</html>