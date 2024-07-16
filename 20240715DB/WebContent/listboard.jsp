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
//DB관련 //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlSelect="select * from tblboard order by num desc";
Class.forName(driver);    //1)외부파일을 가져오는(로딩) 방법
Connection conn=DriverManager.getConnection(url, user, password); //2)DB연동
Statement stmt = conn.createStatement();  // 3) 빈 문장통 
ResultSet rs=stmt.executeQuery(sqlSelect);  //4)rs결과통
//endDB관련 //
%>
<body>
<h1>게시판</h1>
<table border="1">
<tr><td>번호</td><td>글제목</td><td>작성자</td><td>작성일</td><td>조회</td></tr>
<%
while(rs.next()) {
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><a href="modify.jsp?num=<%=rs.getString(1)%>">
<%=rs.getString(5)%></a></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td></tr>
<%
}%>
</table>
</body>
</html>