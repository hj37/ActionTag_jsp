<%@page import="sec01.ex02.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%
	 
	 	//forward2.jsp에서 MemberBean객체를 생성하고 변수(속성)에 회원정보를 설정함.
	 	//그리고 request내장객체 메모리 영역에 속성이름을 member로 정하여
	 	//MemberBean객체를 바인딩(저장)한 후 
	 	//member2.jsp로 포워딩(재요청)합니다.
	 
	 	request.setCharacterEncoding("UTF-8");
	 
	 	//MemberBean객체 생성시..생성자를 호출하여 멤버변수값을 저장 
	 	
	 	MemberBean member = new MemberBean("lee","1234","이순신","lee@test.com");
	 	
	 	//속성이름을 member로 정하여 바로위에 생성된 MemberBean객체를 request영역에 저장 
	 	request.setAttribute("member", member);
	 						//속성이름 , 값	 						
	 %>
	 	<%-- member2.jsp로  포워딩 --%>
		<jsp:forward page="member2.jsp"/>


</body>
</html>