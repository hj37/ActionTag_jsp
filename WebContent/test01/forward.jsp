<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("UTF-8");

	//memberForm2.jsp(회원가입창)에서 전달된 request내장객체영역에 
	//개발자가 수동으로 추가하여 데이터를 저장 
	request.setAttribute("address","부산시금정구");



%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%--member2.jsp로 포워딩합니다. --%>
		<jsp:forward page="member2.jsp"></jsp:forward>
</body>
</html>