<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		구구단 입력창에서 구구단 단수를 입력한 후 입력한 단수를 guguResult.jsp로 전송합니다.
	 --%>
	 <h1>출력할 구구단의 수를 지정 해 주세요.</h1>
	 <form action="guguResult2.jsp" method="get">
	 	출력할 구구단 : <input type="text" name="dan"/> <br>
		<input type="submit" value="구구단 출력 요청"> 
	 </form>
</body>
</html>