<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petkage_joinPro</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

//1. join.jsp 입력값 가져옴
String user_id = request.getParameter("user_id");
String user_pwd = request.getParameter("user_pwd");
String user_name = request.getParameter("user_name");
String user_phone = request.getParameter("user_phone");
String user_email = request.getParameter("user_email");
Timestamp user_createDate = new Timestamp(System.currentTimeMillis());

//2. memberDTO에 데이터 담아 insertMember() 호출하여 전달함.
MemberDTO memberDTO = new MemberDTO();
memberDTO.setUser_id(user_id);
memberDTO.setUser_pwd(user_pwd);
memberDTO.setUser_name(user_name);
memberDTO.setUser_phone(user_phone);
memberDTO.setUser_email(user_email);
memberDTO.setUser_createDate(user_createDate);

MemberDAO memberDAO = new MemberDAO();
memberDAO.insertMember(memberDTO);

%>
<script type="text/javascript">
	alert("회원가입이 완료되었습니다.");
	location.href="login.jsp";
</script>
</body>
</html>