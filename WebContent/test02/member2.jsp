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
		<tr align="center">
			<td>${requestScope.member.id}</td>
			<td>${member.pwd}</td>
			<td>${member.name}</td>
			<td>${member.email}</td>
		</tr>

	</table>
</body>
</html>