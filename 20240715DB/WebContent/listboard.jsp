<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<% 
// DB관련
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlSelect="select * from tblboard";
Class.forName(driver); // 외부 파일을 가져오는(loading) 방법 
Connection conn= DriverManager.getConnection(url, user, password); // DB연동
System.out.print("DB 성공");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(sqlSelect); // rs 결과 스키마
rs.next(); // rs를 레코드 단위로 읽기 
out.print(rs.getString(1)); // 1번 필드
out.print(rs.getString(2)); // 2번 필드
%>
<body>
<h1>게시판</h1>
<table border="1">
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<%
while(rs.next()) {
%>
<tr><td><%= rs.getString(1)%></td><td><%=rs.getString(5)%></td><td><%=rs.getString(2)%></td><td><%=rs.getString(7)%></td><td><%=rs.getString(8)%></td></tr>
<%
}
%>
</table>
</body>
</html>