<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.ArrayList"
    %>
  
    
<%-- useBean액션태그를 이용하여 MemberBean객체생성 --%>    
<jsp:useBean id="m1"  class="sec01.ex01.MemberBean"/>

<%--MemberBean객체에 name속성(변수)에 값을 "이순신"을 저장함. --%> 
<jsp:setProperty property="name" name="m1" value="이순신"/>


<%--useBean액션태그를 이용한 ArrayList가변길이 배열객체 생성 --%>
<jsp:useBean id="m2" class="java.util.ArrayList"/>

empty연산자 
	<h2>
		<%--  MemberBean객체의 name속성에 값이 설정이 되어 있으므로 false를 반환함.--%>
		${empty m1} <br>
		${not empty m1} <br> <%--true를 반환함 --%>
		
		<%-- ArrayList객체인 m2에 값이 비어 있으므로 true를 반환함. --%>
		${empty m2} <br> 
		<%-- ArrayList가변길이 배열 공간안에 값이 존재하느냐? 라고  묻는다. 존재하면 true 존재하지 않으면 
		false를 반환한다. --%>
		${not empty m2} <br> <%-- false를 반환함 --%>
		
		<%--문자열에 대해 false를 반환함 --%>
		${empty "hello" } <br>
		<%--null은 true를 반환함. --%>
		${empty null}<br>
		<%--빈 공백문자열은 true를 반환함 --%>
		${empty ""}
	</h2>

