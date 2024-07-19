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
try{
String num=request.getParameter("num");
String pass=request.getParameter("pass");
out.print(num);out.print(pass);
//DB관련 //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlDel="delete from tblboard where num= ? and pass=?";

out.print(sqlDel);
Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, password);
PreparedStatement pstmt=conn.prepareStatement(sqlDel);  //3)준비된 문장통
pstmt.setString(1, num);
pstmt.setString(2, pass);
pstmt.executeUpdate();

//update tablboard set num=num-1 where num > 2 
String sqlUpdate="update tblboard set num=num-1 where num > ?";
pstmt=conn.prepareStatement(sqlUpdate);
pstmt.setString(1, num);
pstmt.executeUpdate();

} catch(Exception e){
	e.printStackTrace();
}
response.sendRedirect("listboard.jsp");

%>
<body>

</body>
</html>