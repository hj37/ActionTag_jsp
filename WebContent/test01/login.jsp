<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp">
		아이디 : <input type="text" size="20"> <br>
		비밀번호 : <input type="password" size="20"><br>
		<input type="submit" value="로그인">
		<input type="reset" value="다시입력">
	</form>
	
<%-- 	직접 컨텍스트 주소 이름을 입력해 요청할 경우
	<a href="http://localhost:8070/pro13/test01/memberForm.jsp">회원가입하기</a>
  --%>
  
<%
	String contextPath = request.getContextPath();
	
	out.println(contextPath);
%>  
  
   
<!--  request객체의 getContextpath()메소드를 이용해 클라이언트가 웹브라우저주소창에 입력하여 요청한 주소중에서... 컨텍스트 주소를 얻어올 수 있다.
 --> <a href="<%=contextPath%>/test01/memberForm.jsp"> 회원가입하기</a>
 
 <hr/>
 
 <%-- 자바코드를 사용하지 않고 pageContext객체의 속성인 request의 하위의 contextPath속성값을 호출하여 
 	컨텍스트 주소 이름을 얻어와 요청할 수 있다.
 --%>
 
 <a href="${pageContext.request.contextPath}/test01/memberForm.jsp">회원가입하기</a>
${pageContext.request.contextPath}
 

</body>
</html>