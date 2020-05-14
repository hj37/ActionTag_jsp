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
		시험 점수를 입력하면 해당하는 학점으로 변환해주는 프로그램을 Core태그 라이브러리를 사용해 만들자.
	 --%>
	<h1>시험점수를 입력해주세요.</h1>
	<form action="scoreResult2.jsp" method="get">
		시험점수 : <input type="text" name="score"><br>
		<input type="submit" value="학점변환요청">
	</form>
	
</body>
</html>