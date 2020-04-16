<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//웹브라우저 주소창에 주소창에 주소를 입력하여 forward1.jsp페이지를 요청시..
	//request,session,application내장객체영역에 회원정보를 바인딩(저장)한 후
	//다시 member1.jsp를 재요청(포워딩) 합니다.
	
	//웹 브라우저 주소창에 입력할 주소:
	//-> http://localhost:8090/pro11/test02/forward1.jsp
	
	
	//인코딩 방식을 UTF-8로 설정 
	request.setCharacterEncoding("UTF-8");
	
	//request내장객체 메모리 영역에 회원정보를 바인딩함.
	request.setAttribute("id","hong");
	request.setAttribute("pwd", "1234");
	
	
	//session내장객체 메모리 영역에 회원정보를 바인딩함.
	session.setAttribute("name", "홍길동");
	
	//application내장객체 메모리 영역에 회원정보를 바인딩함.
	application.setAttribute("email","hong@test.com");
	


%>

	<%-- member1.jsp로 포워딩(재요청)함 --%>
	<jsp:forward page="member1.jsp"/>



















