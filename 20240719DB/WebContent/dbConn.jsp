<%@page import="java.sql.DriverManager"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Connection"%>
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
<%
Connection conn=null;
try{
	Context ctx=new InitialContext();   //1)초기컨텍스(server.xml 의 context)
	DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/myoracle"); //2)name=jdbc/myoracle 찾아서
	conn=ds.getConnection();  //3) 연결 conn
	System.out.print("db연동");
}catch(Exception e){
	e.printStackTrace();
}


// String driver="oracle.jdbc.OracleDriver";
// String url="jdbc:oracle:thin:@localhost:1521:xe";
// String user="system";
// String password="oracle";
// Class.forName(driver);    //1)외부파일을 가져오는(로딩) 방법
// Connection conn=DriverManager.getConnection(url, user, password); //2)DB연동
%>
</body>
</html>