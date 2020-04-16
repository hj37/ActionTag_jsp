<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	//MemberForm6.jsp회원가입창 페이지에서 입력한 회원정보들을 
	//request내장객체영역에서 얻어 ~~~~
	//MemberBean객체의 각변수에 저장(액션태그로)


%>
<jsp:useBean id="m" class="sec01.ex02.MemberBean" />
<jsp:setProperty property="*" name="m" />

<%--Address클래스로부터 객체 생성 --%>
<jsp:useBean id="addr" class="sec01.ex02.Address" />

<%--Address빈(객체)를 생성한 후 도시(city)와 우편번호(zipcode)를 변수에 저장 --%>
<jsp:setProperty property="city" name="addr" value="서울" />
<jsp:setProperty property="zipcode" name="addr" value="07654" />

<%
	//위에 액션태그로 생성한 MemberBean객체의 addr속성(변수)에 Address빈(객체)를 주입
	m.setAddr(addr);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="5%"><b>이름</b></td>
			<td width="5%"><b>이메일</b></td>
			<td width="5%"><b>도시</b></td>
			<td width="5%"><b>우편번호</b></td>
		</tr>
		<tr align="center">
			<td>${m.id}</td>	<%--MemberBean객체의 id변수에 저장된 값 얻어 출력 --%>
			<td>${m.pwd}</td>	<%--MemberBean객체의 pwd변수에 저장된 값 얻어 출력 --%>
			<td>${m.name}</td>	<%--MemberBean객체의 name변수에 저장된 값 얻어 출력 --%>
			<td>${m.email}</td>	<%--MemberBean객체의 email변수에 저장된 값 얻어 출력 --%>
			<td><%=m.getAddr().getCity() %></td>	<%--MemberBean객체의 addr변수에 저장되어 있는 Address객체에 접근하여 도시명을 얻어 출력 --%>
			<td><%=m.getAddr().getZipcode() %></td>	<%--MemberBean객체의 addr변수에 저장되어 있는 Address객체에 접근하여 우편번호를 얻어 출력 --%>
		
		</tr>
		
		<tr align="center">
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>
			<%-- MemberBean객체의 addr변수에 저장된 Address객체에 접근하여 Address객체의 city변수값을 얻어 출력 --%>
			<td>${m.addr.city}</td>
			<td>${m.addr.zipcode}</td>		
		</tr>
	</table>

</body>
</html>