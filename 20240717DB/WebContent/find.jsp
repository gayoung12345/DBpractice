<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>검색결과</title>
</head>
<body>
<h1>검색결과</h1>
<%
String key=request.getParameter("key");   //name
String keyword=request.getParameter("keyword"); //홍길동
//out.print(key);out.print(keyword);
//DB관련 //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlSelect="select * from tblboard where "+key+" like "+"'%"+keyword+"%'";
//select * from tblboard where name = '홍길동'
//select * from tblboard where name like '%홍%'
Class.forName(driver);    //1)외부파일을 가져오는(로딩) 방법
Connection conn=DriverManager.getConnection(url, user, password); //2)DB연동
Statement stmt = conn.createStatement();  // 3) 빈 문장통 
ResultSet rs=stmt.executeQuery(sqlSelect);  //4)rs결과통
while(rs.next()){
	out.print(rs.getString(1));
	out.print(rs.getString(5));
	out.print(rs.getString(2));
	out.print(rs.getString(7));
	out.print(rs.getString(8)+"<br/>");
	
}
//endDB관련 //




%>
</body>
</html>