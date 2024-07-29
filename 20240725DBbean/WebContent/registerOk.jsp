<%@page import="kr.test.bean.MemberDB"%>
<%@page import="kr.test.bean.MemberBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="mb" class="kr.test.bean.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="mb"/>

<%
    
    mb.setMem_regdate(new Timestamp(System.currentTimeMillis()));
	MemberDB manager=MemberDB.getInstance();
	
	int re=manager.insertMember(mb);
	if(re==1) {
%>
     <script>
     	alert("회원가입에 성공하였습니다");
     	document.location.href="index.jsp";
     </script>

<%		
	}
	else {
%>
     <script>
     	alert("회원가입에 실패하였습니다");
     	document.location.href="register.jsp";
     </script>
<%		
	}
%>


</body>
</html>