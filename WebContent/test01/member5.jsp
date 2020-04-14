<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>    
    
    
<%-- memberForm5.jsp페이지에서 입력한 회원정보를 request내장객체영역에서 꺼내어서 
MemberBean객체를 생성해 각 변수에 저장(액션 태그 활용) --%>    


<%-- 회원가입창(memberForm.html)에서 전달된 <input>태그의 name속성값과
	MemberBean의 변수이름이 각각 동일하면 
	모든 ~ setter메소드가 호출되어 자동으로 MemberBean의 각 변수에 저장됨 
 --%>	
 
							<%-- 클래스 경로를 적는거라서 .java안적어야함  --%>
 <jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page"/>
 
 <%-- id는 생성한 MemberBean을 식별할 수 있는 고유값,참조변수이름이라고 외워놓으면 좋다. --%>
	<jsp:setProperty property="*"  name="m1" />
	
<%-- MemberBean객체를 추가하여 저장할 배열공간인? ArrayList객체 생성 --%>	
<jsp:useBean id="membersList" class="java.util.ArrayList"/>
	
<%-- 새로운 회원 한명의 정보를 만들어서 저장할 배열공간인? HashMap객체 생성 --%>
<jsp:useBean id="membersMap" class="java.util.HashMap"/>	

<%
	//HashMap객체에 key, value 쌍으로 묶어서 새 회원정보 저장
	//value를 얻을때 key를 이용해 얻는다.
	membersMap.put("id", "park2");
	membersMap.put("pwd", "4321");
	membersMap.put("name", "박지성");
	membersMap.put("email", "park2@test.com");

	//회원정보를 저장하는 MemberBean객체를 자바코드로 생성합니다.
	MemberBean m2 = new MemberBean("son","1234","손흥민","son@test.com");

	//ArrayList에 memberForm5.jsp에서 전송된 회원정보가 저장된 MemberBean객체를 추가해서 저장 
	membersList.add(m1);
	//위 자바코드로 생성한 MemberBean객체를? ArrayList에 추가해서 저장
	membersList.add(m2);
	
	//회원정보를(MemberBean객체2개)이 저장되어 있는 ArrayList를? key와 value를 쌍으로 HashMap에 저장 
	membersMap.put("membersList",membersList);
	
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
		<%-- HashMap 이름뒤에 .(마침표) 연산자로 저장시 사용한 key를 사용하여 value를 가져옵니다. --%> 		
			<tr align="center">
				<td>${membersMap.id}</td>
				<td>${membersMap.pwd}</td>
				<td>${membersMap.name}</td>
				<td>${membersMap.email}</td>
			</tr>
			
		<%-- HashMap에 저장된 ArrayList를 얻어 접근한후 
		ArryaList내부의 0번째 인덱스 위치에 있는 MemberBean을 최종 얻어 각변수값을 출력 --%>	
			<tr>
				<td>${membersMap.membersList[0].id}</td>
				<td>${membersMap.membersList[0].pwd}</td>
				<td>${membersMap.membersList[0].name}</td>
				<td>${membersMap.membersList[0].email}</td>
			</tr>		
			
			
		<%-- HashMap에 저장된 ArrayList를 얻어 접근한후 
		ArryaList내부의 1번째 인덱스 위치에 있는 MemberBean을 최종 얻어 각변수값을 출력 --%>	
			<tr>
				<td>${membersMap.membersList[1].id}</td>
				<td>${membersMap.membersList[1].pwd}</td>
				<td>${membersMap.membersList[1].name}</td>
				<td>${membersMap.membersList[1].email}</td>
			</tr>			
			
		</table>

</body>
</html>