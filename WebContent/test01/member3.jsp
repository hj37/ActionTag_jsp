<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>    
    
    
<%-- memberForm3.jsp페이지에서 입력한 회원정보를 request내장객체영역에서 꺼내어서 
MemberBean객체를 생성해 각 변수에 저장(액션 태그 활용) --%>    


<%-- 회원가입창(memberForm.html)에서 전달된 <input>태그의 name속성값과
	MemberBean의 변수이름이 각각 동일하면 
	모든 ~ setter메소드가 호출되어 자동으로 MemberBean의 각 변수에 저장됨 
 --%>	
 
							<%-- 클래스 경로를 적는거라서 .java안적어야함  --%>
 <jsp:useBean id="mb" class="sec01.ex01.MemberBean" scope="page"/>
 
 <%-- id는 생성한 MemberBean을 식별할 수 있는 고유값,참조변수이름이라고 외워놓으면 좋다. --%>
	<jsp:setProperty property="*"  name="mb" />
	
	
<%-- <jsp:setProperty property="id" name="mb"/>
<jsp:setProperty property="pwd" name="mb"/>
<jsp:setProperty property="name" name="mb"/>
<jsp:setProperty property="email" name="mb"/> --%>

    
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
		<%--표현식 <%= % >을 이용하여 입력한 회원정보를 MemberBean객체의 각 변수에 저장되어있다.
			MemberBean객체의 각 변수에 저장된 값을 자바코드로 얻어 출력 --%>	
			<tr>
				<td><%=mb.getId()%></td>
				<td><%=mb.getPwd()%></td>
				<td><%=mb.getName() %></td>
				<td><%=mb.getEmail() %></td>
			</tr>	
		<%-- 표현언어 ${ }를 이요! 입력한 회원정보들을 MemberBean의 각 변수에서 꺼내와서 출력 --%>
		<%-- useBean액션태그의 id속성값과 MemberBean의 각 속성이름으로 접근해 입력한 회원정보를 얻어출력 --%>
			<tr>
				<td>${mb.id}</td>	<%--getId랑 같음--%>
				<td>${mb.pwd}</td>	
				<td>${mb.name}</td>	
				<td>${mb.email}</td>
			</tr>
				
					
		</table>

</body>
</html>