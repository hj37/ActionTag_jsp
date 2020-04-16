<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	//두 번째 JSP페이지인 member1.jsp페이지에서 우선 첫번째 방법으로 getAttribute()메소드를 활용함
	//이용해 각 메모리 영역의 값을 얻는다.
	//두번째 방법으로 표현언어 EL에서 자바코드를 사용하지 않고 바로 속성이름으로? 회원정보를 얻어 출력함
			
	//첫 번째 방법 
	//-> 각 내장객체에 바인딩된 속성값들을 getAttribute() 메소드를 이용해 가져옴 
	String id = (String)request.getAttribute("id");
	String pwd = (String)request.getAttribute("pwd");
	
	String name = (String)session.getAttribute("name");
	String email = (String)application.getAttribute("email");
%>    
    
    
    
    
    
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
		<%--표현식을 이용해 각 내장객체 메모리영역에 저장된 데이터를 얻어 출력 --%>
		<tr align="center">
			<td><%=id%></td>
			<td><%=pwd%></td>
			<td><%=name%></td>
			<td><%=email%></td>		
		</tr>
		<%--자바코드 없이 내장객체들에 바인딩된 속성이름을 이용하여 회원정보 데이터를 얻어 출력 --%>
		<tr align="center">
			<td>${id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${email}</td>	
		</tr>
		<%--표현언어 EL ${ }에서는 동일한 속성이름에 접근할 경우 page객체의 속성이 우선순위가 가장 높습니다.
			표현언어 EL에서 같은 속성에 대한 우선순위는 다음과 같다.
			page > request > session > application
		 --%>
	</table>

</body>
</html>