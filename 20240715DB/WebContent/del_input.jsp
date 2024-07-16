<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<%
String num=request.getParameter("num");
String pass=request.getParameter("pass");
// out.print(num);out.print(pass);
//DB관련 //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlDel="delete from tblboard where num=?";
Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, password);
PreparedStatement pstmt=conn.prepareStatement(sqlDel);
pstmt.setString(1, num);
pstmt.executeUpdate();
response.sendRedirect("listboard.jsp");
%>
<body>

</body>
</html>