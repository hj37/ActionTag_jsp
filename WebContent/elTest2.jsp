<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL표현언어에 출력해서 나타낼 수 있는 여러가지 연산자들</title>
</head>
<body>
	<h2>여러 가지 산술 연산자</h2>
	<h1>
	
		 ${10 + 10}<br>
		
	 	 ${20 - 10}<br>
	 	 
	 	 ${10 * 10}<br>
	 	 
	 	 ${100/9}<br>
	 	 
	 	 <%--div를 사용해 나누기 연산 가능 --%>
	 	 ${100 div 9}<br>
	 	 
	 	 ${100 % 9}	<br>
	 	 
	 	 <%-- mod를 사용해 나머지 연간 가능함. --%>
	 	
	 	 ${100 mod 9} <br>	
	 	 
	</h1>





</body>
</html>