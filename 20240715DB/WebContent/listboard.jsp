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
// DB����
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlSelect="select * from tblboard";
Class.forName(driver); // �ܺ� ������ ��������(loading) ��� 
Connection conn= DriverManager.getConnection(url, user, password); // DB����
System.out.print("DB ����");
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(sqlSelect); // rs ��� ��Ű��
rs.next(); // rs�� ���ڵ� ������ �б� 
out.print(rs.getString(1)); // 1�� �ʵ�
out.print(rs.getString(2)); // 2�� �ʵ�
%>
<body>
<h1>�Խ���</h1>
<table border="1">
<tr><td>��ȣ</td><td>����</td><td>�ۼ���</td><td>�ۼ���</td><td>��ȸ��</td></tr>
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