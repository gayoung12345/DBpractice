<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*, java.util.*"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>�۾���DB�� ����Ǵ� ����</h1>
<%
String name=request.getParameter("name");
String pass=request.getParameter("pass");
String email=request.getParameter("email");
String title=request.getParameter("title");
String contents=request.getParameter("contents");
//out.print(name+","+pass+","+email+","+title+","+contents);
// DB���� //
String driver="oracle.jdbc.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="oracle";
String sqlInsert="insert into tblboard(num, name,pass,email,title,contents,writedate,readcount) values(num_seq.nextval,?,?,?,?,?,?,?)";
Class.forName(driver);    //1)�ܺ������� ��������(�ε�) ���
Connection conn=DriverManager.getConnection(url, user, password); //2)DB����
// endDB���� //

PreparedStatement pstmt=conn.prepareStatement(sqlInsert);   //3) �غ���� preparedstatement

// ��¥���� �����ϱ� //
Calendar sysCal=Calendar.getInstance();
String writedate=Integer.toString(sysCal.get(Calendar.YEAR))+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MONTH)+1)+"-";
writedate=writedate+Integer.toString(sysCal.get(Calendar.DATE))+" ";
writedate=writedate+Integer.toString(sysCal.get(Calendar.HOUR))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.MINUTE))+":";
writedate=writedate+Integer.toString(sysCal.get(Calendar.SECOND));
// end��¥���� �����ϱ� //


pstmt.setString(1,name);  //1��? ��  name���� ����
pstmt.setString(2,pass); 
pstmt.setString(3,email); 
pstmt.setString(4,title);  
pstmt.setString(5,contents); 
pstmt.setString(6,writedate); 
pstmt.setInt(7,0); 
pstmt.executeUpdate();  // 4)����

response.sendRedirect("index.jsp"); //request(��û)/response(����)
%>



</body>
</html>