<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>member_output.jsp</title>
</head>
<body>

<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
String juminnum1=request.getParameter("juminnum1");
String juminnum2=request.getParameter("juminnum2");
String zip=request.getParameter("zip");
String address1=request.getParameter("address1");
String address2=request.getParameter("address2");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
//out.print(id);out.print(pass);out.print(name);out.print(juminnum1);
%>
<%
// 
try{
String sqlInsert="insert into tblmember(id,pass,name,juminnum1,juminnum2) values(?,?,?,?,?)";
PreparedStatement pstmt=conn.prepareStatement(sqlInsert);
pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
pstmt.setString(4, juminnum1);
pstmt.setString(5, juminnum2);

pstmt.executeUpdate();
//response.sendRedirect("../index.jsp");
} catch(Exception e){
	e.printStackTrace();
}
conn.close();
%>
<center>회원가입성공</center>
회원가입을 축하합니다.
<a href="member.jsp">[로그인]</a><br/>
<a href="../index.jsp">[홈페이지]</a>





</body>
</html>