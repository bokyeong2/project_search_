<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String user_id = request.getParameter("user_id");
MemberDAO memberDAO = new MemberDAO();
MemberDTO memberDTO = memberDAO.getMember(user_id);

if(memberDTO != null){
    %>이미 사용중인 아이디입니다.<%
    }else{
    %>사용 가능한 아이디입니다.<%
}
%>
</body>
</html>