<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어의 여러가지 논리 연산자들</title>
</head>
<body>
	<%--
	
		표현언어의 논리 연산자 사용법 
		1. && 연산자나 and 연산자는 논리곱 연산을 합니다.
		2. || 연산자나 or연산자는 논리합 연산을 합니다.
		3. ! 연산자는 not연산자 반대의 결과를 출력합니다.
	 --%>
	 <h2>	
	 	
	 	<%-- &&, and 연산자는 연산자 양쪽 값이 true일때만 true를 반환합니다. --%>
	 	${(10==10) && (20== 20)} <br>
	 	${(10==10) and (20== 20)} <br><br>
	 	
	 	<%-- ||, or 연산자는 연산자 양쪽 값중 하나라도 true이면 true를 반환합니다. --%>
	 	${(10==10) || (20 == 30)}<br>
	 	${(10==10) or (20 == 30)}<br><br>
	 	
	 	<%--비교연산자 == 의 결과값이 false이므로  not연산자로 true를 출력합니다.--%>
	 	${!(20==10) } <br>
	 	${not(20 eq 10)}<br><br>
	 	
	 	${!(20 != 10)} <br>
	 	${not(20 ne 10)} 
	 	
	 </h2>



</body>
</html>