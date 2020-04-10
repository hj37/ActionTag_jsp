<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
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
				<td width="20%"><b>주소</b></td>			
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
				<%-- requestScope내장객체이름을 이용해 request내장객체에 접근하여 저장되어 있는 값을 얻어 출력 --%>			
				<td>${address}<br>
<%-- 				<td><%=request.getAttribute("address")%></td>
 --%>			</tr>
		
		
		</table>

</body>
</html>