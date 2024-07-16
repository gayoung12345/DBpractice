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
String num=  request.getParameter("num");
//String name = request.getParameter("name"); // disabled
String pass = request.getParameter("pass");
String email = request.getParameter("email");
String title = request.getParameter("title");
String contents = request.getParameter("contents");
// out.print(num+","+name+","+email+","+title+","+contents); // test

String sqlUpdate = "update tblboard set pass=?, email=?, title=?, contents=? where num =?";

//DB관련 //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
Class.forName(driver);    
Connection conn=DriverManager.getConnection(url, user, password); 
PreparedStatement pstmt=conn.prepareStatement(sqlUpdate);
pstmt.setString(1, pass);
pstmt.setString(2, email);
pstmt.setString(3, title);
pstmt.setString(4, contents);
pstmt.setString(5, num);

pstmt.executeUpdate();
response.sendRedirect("listboard.jsp");
%>
<body>

</body>
</html>