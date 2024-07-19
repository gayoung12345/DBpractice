<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
String juminnum1 = request.getParameter("juminnum1");
String juminnum2 = request.getParameter("juminnum2");
String zip = request.getParameter("zip");
String address1 = request.getParameter("address1");
String address2 = request.getParameter("address2");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
%>
<%
try{
String sqlInsert="insert into tblmember(id, pass, name, juminnum1, juminnum2) values(?,?,?,?,?)";
PreparedStatement pstmt = conn.prepareStatement(sqlInsert);
pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
pstmt.setString(4, juminnum1);
pstmt.setString(5, juminnum2);

pstmt.executeUpdate();
} catch (Exception e) {
	e.printStackTrace();
}
conn.close();
%>

</body>
</html>