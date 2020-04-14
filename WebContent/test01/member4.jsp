<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>    
    
    
<%-- memberForm4.jsp페이지에서 입력한 회원정보를 request내장객체영역에서 꺼내어서 
MemberBean객체를 생성해 각 변수에 저장(액션 태그 활용) --%>    


<%-- 회원가입창(memberForm.html)에서 전달된 <input>태그의 name속성값과
	MemberBean의 변수이름이 각각 동일하면 
	모든 ~ setter메소드가 호출되어 자동으로 MemberBean의 각 변수에 저장됨 
 --%>	
 
							<%-- 클래스 경로를 적는거라서 .java안적어야함  --%>
 <jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page"/>
 
 <%-- id는 생성한 MemberBean을 식별할 수 있는 고유값,참조변수이름이라고 외워놓으면 좋다. --%>
	<jsp:setProperty property="*"  name="m1" />



<%
	//자바코드로 MemberBean클래스에 대한 객체 생성!
	//객체 생성시 ~ 초기화시킬 id변수의 값, pwd변수의 값,name변수의 값,
	//email변수값을 각각 생성자로 전달하여 생성 
	MemberBean m2 = new MemberBean("son","1234","손흥민","son@test.com");

%>


<%--id속성값이 membersList인? ArrayList클래스로부터 객체생성(액션태그로) --%>	
<jsp:useBean id ="memberslist" class="java.util.ArrayList" />	

<%
	//위 두개의 MemberBean객체를 ArrayList배열에 추가하여 저장합니다.
	memberslist.add(m1);
	memberslist.add(m2);


%>

	
	
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
		<%-- ArrayList배열의 0번째인덱스 위치에 저장되어있는 
		MemberBean객체를 얻어 MembersBean객체의 각 변수에 저장되어 있는 변수값을 얻어 EL식으로 출력--%>
		
			
			<tr>
				<td>${memberslist[0].id}</td>
				<td>${memberslist[0].pwd}</td>
				<td>${memberslist[0].name}</td>
				<td>${memberslist[0].email}</td>
			</tr>		
			
		<%-- ArrayList배열의 1번째인덱스 위치에 저장되어있는 
		MemberBean객체를 얻어 MembersBean객체의 각 변수에 저장되어 있는 변수값을 얻어 EL식으로 출력--%>
		
			
			<tr>
				<td>${memberslist[1].id}</td>
				<td>${memberslist[1].pwd}</td>
				<td>${memberslist[1].name}</td>
				<td>${memberslist[1].email}</td>
			</tr>		
			
			
					
		</table>

</body>
</html>