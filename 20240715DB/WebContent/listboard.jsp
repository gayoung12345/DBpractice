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
//DB���� //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlSelect="select * from tblboard order by num desc";
Class.forName(driver);    //1)�ܺ������� ��������(�ε�) ���
Connection conn=DriverManager.getConnection(url, user, password); //2)DB����
Statement stmt = conn.createStatement();  // 3) �� ������ 
ResultSet rs=stmt.executeQuery(sqlSelect);  //4)rs�����
//endDB���� //
%>
<body>
<h1>�Խ���</h1>
<table border="1">
<tr><td>��ȣ</td><td>������</td><td>�ۼ���</td><td>�ۼ���</td><td>��ȸ</td></tr>
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