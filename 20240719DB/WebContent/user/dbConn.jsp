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
<h1>Ŀ�ؼ�Ǯ</h1>
<%
Connection conn=null;
try{
	Context ctx=new InitialContext();   //1)�ʱ����ؽ�(server.xml �� context)
	DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/myoracle"); //2)name=jdbc/myoracle ã�Ƽ�
	conn=ds.getConnection();  //3) ���� conn
	System.out.print("db����");
}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>