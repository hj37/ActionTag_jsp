<%@page import="java.util.List"%>
<%@page import="sec01.ex01.MemberDAO"%>
<%@page import="sec01.ex01.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	member_action.jsp는 회원기능을 수행하지 않고
	데이터베이스 연동 기능만 수행합니다.
	회원 정보를 추가한 후 다시 회원정보를 조회하고,
	조회한 회원 정보를 request에 바인딩(저장)한 후 memberList.jsp로 포워딩(재요청)합니다.
--%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<%-- memberForm.jsp에서 입력한 회원정보를 request에서 꺼내와서 MemberBean에 저장 --%>
<jsp:useBean id="m" class="sec01.ex01.MemberBean"	/>
<jsp:setProperty property="*" name="m"/>

<%
	MemberDAO memDAO = new MemberDAO();
	memDAO.addMember(m);	//회원정보를 DB에 추가합니다.
	//모든 회원정보를 조회 한 후 ArrayList로 반환받기
	List membersList = memDAO.listMembers();	//모든 회원정보를 조회한후 ArrayList로 반환
	//조회한 회원정보 ArrayList를 request에 바인딩합니다.
	request.setAttribute("membersList", membersList);
%>
<%-- 다시 memberlist.jsp로 포워딩해서  --%>
<jsp:forward page="membersList.jsp"/>
