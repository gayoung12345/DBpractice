<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�˻����</title>
</head>
<body>
<h1>�˻����</h1>
<%
String key=request.getParameter("key");   //name
String keyword=request.getParameter("keyword"); //ȫ�浿
//out.print(key);out.print(keyword);
//DB���� //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlSelect="select * from tblboard where "+key+" like "+"'%"+keyword+"%'";
//select * from tblboard where name = 'ȫ�浿'
//select * from tblboard where name like '%ȫ%'
Class.forName(driver);    //1)�ܺ������� ��������(�ε�) ���
Connection conn=DriverManager.getConnection(url, user, password); //2)DB����
Statement stmt = conn.createStatement();  // 3) �� ������ 
ResultSet rs=stmt.executeQuery(sqlSelect);  //4)rs�����
while(rs.next()){
	out.print(rs.getString(1));
	out.print(rs.getString(5));
	out.print(rs.getString(2));
	out.print(rs.getString(7));
	out.print(rs.getString(8)+"<br/>");
	
}
//endDB���� //




%>
</body>
</html>