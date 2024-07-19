<%@page import="javax.naming.Context"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>커넥션풀</h1>
<%
Context ctx = new InitialContext();
DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
Connection conn = ds.getConnection();
%>
</body>
</html>