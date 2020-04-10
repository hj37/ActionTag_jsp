<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어 내부에 사용가능한 비교 연산자</title>
</head>
<body>
		<%--
			표현언어에서 비교 연산자 사용 방법 
			
			1. 값이 같은 비교할때는 == 또는 eq 연산자를 사용합니다.
			2. 값이 같지 않은지를 비교할때는 != 또는 ne 연산자를 사용합니다.
			3. 대소 비교시 > 와 < 연산자 그리고 gt 와 lt도 각각 연산자로 사용할 수 있습니다.
			4. 대소 및 동등 비교를 동시에 할때는 >= 와 <=연사자 그리고 ge와 le도 각각 연산자로 사용할 수 있습니다.
		 --%>
				${10 == 10} <br>
				${10 eq 10} <br><br>
				
				${"hello" == "hello"} <br>
				${"hello" eq "hello"} <br><br>
				
				${20 != 10} <br> <%-- 값이 서로 다른지 비교할때는 != 또는 ne사용 --%>
				${20 ne 10} <br><br>	 
			
				${"hello" != "apple"} <br> <%-- 문자열이 서로 다른지 비교할때도 마찬가지로 != 또는 ne 사용 --%>
				${"hello" ne "apple"} <br><br>
				
				${10 < 10 }	<br>
				${10 lt 10} <br><br>
				
				${100 > 10} <br>
				${100 gt 10} <br><br>
				
				${100 >= 10} <br>
				${100 ge 10} <br><br>
				

</body>
</html>