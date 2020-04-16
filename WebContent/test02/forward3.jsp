<%@page import="sec01.ex02.MemberBean"%>
<%@page import="java.util.ArrayList"%>
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
	<%
		//흐름 : forward3.jsp에서 ArrayList배열을 생성하고 MemberBean객체를 저장합니다.
		// 	그리고 request내장객체 메모리영역에 ArrayList배열을 membersList속성이름을 정하여
		// 바인딩(저장)한 후 member3.jsp로 포워딩(재요청)함.
		
		
		request.setCharacterEncoding("UTF-8");
	
		//업캐스팅 사용 
		//List조상인터페이스 타입의 변수에 자식객체인? ArrayList배열객체메모리를 생성하여 저장함.
		List membersList = new ArrayList();
	
		//MemberBean객체를 생성한 후 두명의 회원정보를 수동으로 각각 저장함.
		MemberBean m1 = new MemberBean("lee","1234","이순신","lee@test.com");
		MemberBean m2 = new MemberBean();
		m2.setId("son");
		m2.setPwd("1234");
		m2.setName("손흥민");
		m2.setEmail("son@test.com");

		//두 개의 MemberBean객체를 각각 ArrayList배열에 추가하여 저장 
		membersList.add(m1);
		membersList.add(m2);
		
		//request내장객체 메모리 영역에 ArrayLsit배열을 속성이름 membersList로 정하여 바인딩(저장)함.
		request.setAttribute("membersList",membersList);

	%>

	<%-- member3.jsp로 포워딩(재요청)함. 재요청시 기존에 존재하던 request메모리는 톰캣메모리에 유지됨 --%>
	<jsp:forward page = "member3.jsp"/>
	



</body>
</html>